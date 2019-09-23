go:
	GOOS=linux GOARCH=amd64 go build -o main .

docker:
	eval $(sudo docker-machine env) && sudo --preserve-env docker build --tag="api:v1" .

