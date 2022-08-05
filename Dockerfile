FROM quay.io/centos/centos:stream9

RUN \
    dnf update -y && \
    dnf install -y gcc git python3 python3-libselinux python3-devel sudo which && \
    dnf clean all && \
    useradd ansible-test-user && \
    usermod -a -G wheel ansible-test-user

ENV SHELL /bin/bash
