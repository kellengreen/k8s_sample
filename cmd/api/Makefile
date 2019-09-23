
NAME = go.cmd.api
VERSION = 1.0.0

go:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

container:
	docker stop ${NAME}; true
	docker rm ${NAME}; true
	docker build --tag="${NAME}:${VERSION}" .
	docker run --detach --name="${NAME}" --publish="8080:8080" ${NAME}:${VERSION}
	
	# docker rmi $(docker images --filter="dangling=true" --quiet); true
	# eval $(sudo docker-machine env) && sudo --preserve-env docker build --tag ="api:v1" .

