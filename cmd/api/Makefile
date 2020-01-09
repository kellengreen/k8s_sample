
NAME = applesauce
VERSION = 1
LOCAL_PORT=3000

build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .
	docker container rm ${NAME}; true
	docker image rm ${NAME}:${VERSION}; true
	docker image build --tag="${NAME}:${VERSION}" .
	docker container create --name="${NAME}" --publish="3000:8080" ${NAME}:${VERSION}

start:
	docker container start ${NAME}

stop:
	docker container stop ${NAME}
