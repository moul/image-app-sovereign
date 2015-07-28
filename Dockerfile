## -*- docker-image-name: "armbuild/scw-app-sovereign:latest" -*-
FROM armbuild/scw-app-ansible:latest
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update \
 && apt-get -y -q upgrade \
 && apt-get install -y -q \
    git \
 && apt-get clean


# Download sovereign
#RUN git clone https://github.com/sovereign/sovereign /sovereign
RUN git clone https://github.com/moul/sovereign /sovereign
WORKDIR /sovereign
RUN ansible-playbook --tags=deps site.yml -c local


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
