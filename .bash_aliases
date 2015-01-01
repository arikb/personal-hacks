
docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

docker-ip-completion() {
	__docker_containers_running
	return 0
}

complete -F docker-ip-completion docker-ip
