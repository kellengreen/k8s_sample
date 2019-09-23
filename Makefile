
# .PHONY: foobar

install-mac:
	brew install go
	brew install docker
	brew install docker-machine
	brew cask install virtualbox

init:
	sudo docker-machine create default
