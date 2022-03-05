FROM quay.io/centos/centos:stream8

RUN \
    dnf update -y && \
    dnf install -y gcc git python39 python3-libselinux python39-devel sudo curl which && \
    dnf clean all && \
    useradd ansible-test-user

ENV SHELL /bin/bash
