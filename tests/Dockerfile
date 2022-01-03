# Based on the dockerfile from https://github.com/geerlingguy/docker-ubuntu1804-ansible/blob/master/Dockerfile

FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

# Fix for https://github.com/pypa/pip/issues/10219
ARG LANG="en_US.UTF-8"
ARG LC_ALL="en_US.UTF-8"

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       apt-utils \
       build-essential \
       locales \
       libffi-dev \
       libssl-dev \
       libyaml-dev \
       python3-dev \
       python3-setuptools \
       python3-pip \
       python3-yaml \
       software-properties-common \
       rsyslog systemd systemd-cron sudo iproute2
    # && apt-get clean \
    # && rm -Rf /var/lib/apt/lists/* \
    # && rm -Rf /usr/share/doc && rm -Rf /usr/share/man
# RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf

# Upgrade pip to latest version.
RUN pip3 install --upgrade pip

# Fix potential UTF-8 errors with ansible-test.
RUN locale-gen en_US.UTF-8

# Install Ansible via Pip.
RUN pip3 install ansible

CMD ["/lib/systemd/systemd"]
