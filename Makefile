DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-sovereign
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Sovereign
DESCRIPTION =		Sovereign
SOURCE_URL =		https://github.com/scaleway/image-app-sovereign


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom makefile commands and overrides
