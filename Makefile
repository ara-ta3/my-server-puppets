PUPPET=$(shell which puppet)
DOCKER=$(shell which docker)
DOCKERIMAGENAME=puppet-sakura-vps

docker-build:
	$(DOCKER) build -t $(DOCKERIMAGENAME) .

docker-run:
	$(DOCKER) run -i -t $(DOCKERIMAGENAME) /bin/bash

puppet-apply:
	find ./manifests -type f -name "*.pp"|xargs -n 1 $(PUPPET) apply

puppet-module-install:
	$(PUPPET) module install puppetlabs-java
