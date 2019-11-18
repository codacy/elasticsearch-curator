REPO_NAME ?= codacy/elasticsearch-curator
VERSION ?= $(shell grep elasticsearch-curator Dockerfile | cut -d \= -f 3)

.PHONY: build
build:
	docker build -t  $(REPO_NAME):$(VERSION) .

.PHONY: publish
publish: build
	docker push $(REPO_NAME):$(VERSION)
	docker tag $(REPO_NAME):$(VERSION) $(REPO_NAME):latest
	docker push $(REPO_NAME):latest
