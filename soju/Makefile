GIT_COMMIT:=$(shell cd ../soju && git describe --always --tags)
LATEST_STABLE:=$(shell cd ../soju && git describe --always --tags --abbrev=0)

container:
	docker build -t mpldr/soju:$(GIT_COMMIT) .
	docker image tag mpldr/soju:$(GIT_COMMIT) mpldr/soju:latest
ifeq "$(GIT_COMMIT)" "$(LATEST_STABLE)"
	docker image tag mpldr/soju:$(GIT_COMMIT) mpldr/soju:stable
endif

push:
	docker image push mpldr/soju:$(GIT_COMMIT)
	docker image push mpldr/soju:latest
ifeq "$(GIT_COMMIT)" "$(LATEST_STABLE)"
	docker image push mpldr/soju:stable
endif
