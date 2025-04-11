#!/bin/bash

docker cp latest-control-plane:/etc/kubernetes/pki/etcd/ca.crt ./.vscode/
docker cp latest-control-plane:/etc/kubernetes/pki/apiserver-etcd-client.crt ./.vscode/
docker cp latest-control-plane:/etc/kubernetes/pki/apiserver-etcd-client.key ./.vscode/

# TODO
alias etcdctl='etcdctl --cacert=.vscode/ca.crt --cert=".vscode/apiserver-etcd-client.crt" --key=".vscode/apiserver-etcd-client.key" --endpoints=172.18.0.2:2379'
                                                                                                                                                                                                                                                                                                                                                               
etcdctl get --prefix /registry --keys-only
