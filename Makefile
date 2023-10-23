.PHONY: build autoupdate-drawio-desktop

# amd64 by default, arm64 for arm machine like macbook m1
ifneq ($(filter arm%,$(shell uname -p)),)
ARCHFLAG := "arm64"
else
ARCHFLAG := "amd64"
endif

DOCKER_IMAGE?=drawio-desktop
build:
	@docker build --build-arg="TARGETARCH=$(ARCHFLAG)" -t ${DOCKER_IMAGE} .

autoupdate-drawio-desktop:
	@$(eval DRAWIO_DESKTOP_RELEASE := $(shell gh release list --repo jgraph/drawio-desktop | grep "Latest" | cut -f1))
	@sed -i 's/DRAWIO_VERSION=.*/DRAWIO_VERSION="$(DRAWIO_DESKTOP_RELEASE)"/' Dockerfile