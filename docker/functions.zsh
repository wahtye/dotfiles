# Kill last launched Docker Container
function dkl() {
    docker kill $(docker ps -ql)
}