# Docker Container Image: Ubuntu 18.04 LTS (Bionic) with Ansible and Molecule

[![Build Status](https://travis-ci.com/erjac77/docker-ubuntu1804-ansible.svg?branch=master)](https://travis-ci.com/erjac77/docker-ubuntu1804-ansible)
[![Docker Build Status](https://img.shields.io/docker/build/erjac77/docker-ubuntu1804-ansible)](https://hub.docker.com/r/erjac77/docker-ubuntu1804-ansible)
[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

A Ubuntu 18.04 LTS (Bionic) Docker container image for Ansible playbook and role testing.

This image uses the [docker systemctl replacement](https://github.com/gdraheim/docker-systemctl-replacement) script to execute systemctl commands without systemd.

## Usage

1. [Install Docker](https://docs.docker.com/install/).

2. Pull this image from Docker Hub.

   `docker pull erjac77/docker-ubuntu1804-ansible:latest`

3. Run a container using the image.

   `docker run -d --name [container_name] erjac77/docker-ubuntu1804-ansible:latest`

4. Use Ansible/Molecule inside the container.

   a. `docker exec --tty [container_name] env TERM=xterm ansible --version`

   b. `docker exec --tty [container_name] env TERM=xterm ansible-playbook /path/to/ansible/playbook.yml`

   c. `docker exec --tty [container_name] env TERM=xterm molecule test`

## Warnings

> **Important:** For testing purposes only. Do not use this image in production!

## License

Apache 2.0

## Author Information

Eric Jacob ([@erjac77](https://github.com/erjac77))
