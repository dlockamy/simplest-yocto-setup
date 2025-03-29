

docker-run:
	docker rm kas-builder:testing
	docker build -t dlockamy/kas-builder:testing .
	docker run -it -v ${PWD}:/builder  kas-builder:testing bash

kas-setup:
	kas checkout
	. openembedded-core/oe-init-build-env

kas-build-kiss:
	bitbake kiss-image

cleanup:
	rm -fr bitback && \
	rm -fr build && \
	rm -fr meta-arm && \
	rm -fr openembedded-core