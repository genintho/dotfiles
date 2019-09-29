alias docker_stop_all="docker ps | awk '{print $1}'| grep -v CONTAINER | xargs docker stop"
alias docker_delete_all_image="docker rmi $(docker images -q)"
function docker_clean()
{
    echo "remove all containers"
    docker ps -a | grep -v CONTAINER | cut -d ' ' -f 1 | xargs docker rm
    echo "remove volumes"
    docker volume prune
    echo "remove images"
    docker images | grep -v REPO | awk '{print $3}' | xargs docker rmi -f
}

