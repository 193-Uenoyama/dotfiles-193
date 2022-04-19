build:
	docker image build ./container -t editor

edit:
	docker run -v `pwd`:/home/user/ --rm -it editor bash
