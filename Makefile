
# .PHONY: foobar

install-mac:
	brew install go
	brew install docker
	brew install docker-machine
	brew cask install virtualbox

install-ubuntu:
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo apt install docker-ce virtualbox -y

	sudo rm  /usr/local/bin/kubectl
	curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
	chmod +x ./kubectl
	sudo mv ./kubectl /usr/local/bin/kubectl
	rm kubectl

	sudo rm  /usr/local/bin/kubectl
	curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
	sudo install minikube /usr/local/bin
	rm minikube

init:
	sudo docker-machine create default
