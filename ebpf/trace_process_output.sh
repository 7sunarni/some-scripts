# Using eBPF trace process stdout

sudo bpftrace -e '
tracepoint:syscalls:sys_enter_write
/comm == "command" && args->fd == 1/
{
  printf("STDOUT: %s\n", str(args->buf));
}
'
