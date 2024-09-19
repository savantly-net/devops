IMAGE := savantly/devops
VERSION := 3.3.0-debian

.PHONY: build
build:
	docker build --build-arg VERSION=$(VERSION) -t $(IMAGE):$(VERSION) .

.PHONY: run
run: build
	docker run -it --rm $(IMAGE):$(VERSION)

.PHONY: push
push:
	docker buildx build --platform linux/amd64,linux/arm64 --push -t $(IMAGE):$(VERSION) .
