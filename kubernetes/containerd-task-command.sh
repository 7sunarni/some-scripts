# !/bin/bash

# list all task command
ctr -n k8s.io t ls | grep -v "TASK" |  while read _ pid _; do echo "$pid:"; cat /proc/$pid/cmdline; echo '' ;echo '---'; done


# list all task k8s serviceaccount token path
ctr -n k8s.io t ls | grep -v "TASK" | while read _ pid _; do echo "$pid:"; ls /proc/$pid/root/var/run/secrets/kubernetes.io/serviceaccount/; done
