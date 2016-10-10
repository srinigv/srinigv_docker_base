# author: srinigv
#
# make build  - build new image from Dockerfile
# make run    - run already created image by tag
# make tag    - git tag changes


NAME=srinigv/base
VERSION=1.0


build:
	docker build -t $(NAME):$(VERSION) .

run:
	docker run --name base --rm -t -i $(NAME):$(VERSION)

tag:
	git tag -d $(VERSION) 2>&1 > /dev/null
	git tag -d latest 2>&1 > /dev/null
	git tag $(VERSION)
	git tag latest
