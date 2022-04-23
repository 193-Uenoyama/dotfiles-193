docker-build:
	docker image build . -t editor

edit:
	docker run -v `pwd`:/home/user/ --rm -it editor bash
