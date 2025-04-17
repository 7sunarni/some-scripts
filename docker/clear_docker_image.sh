#! /bin/bash

_clear_docker_images(){
        _image=$1;
        docker images | grep $1 | while read _  _ has _; do docker rmi $has; done;
        docker system prune;
}
# usage:
# _clear_docker_image "none"
