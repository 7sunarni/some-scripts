# !/bin/bash
cat $KUBECONFIG | grep "client-certificate-data:" | awk -F ' ' '{print $2}' | base64 -d > /tmp/client-certificate
cat $KUBECONFIG | grep "client-key-data:" | awk -F ' ' '{print $2}' | base64 -d > /tmp/client-key-data
cat $KUBECONFIG | grep "certificate-authority-data:" | awk -F ' ' '{print $2}'  | base64 -d > /tmp/certificate-authority-data
EP=$(cat $KUBECONFIG | grep "server:" | awk -F ' ' '{print $2}')

alias kurl='curl -k --cacert "/tmp/certificate-authority-data" --cert "/tmp/client-certificate"  --key "/tmp/client-key-data"'

echo "Usage:"
echo "source curl-with-kubeconfig.sh"
echo "kurl \$EP/APISERVER_PATH to visit kube-apiserver"
