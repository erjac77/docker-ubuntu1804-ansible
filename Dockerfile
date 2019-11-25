FROM ubuntu:18.04

LABEL maintainer="Eric Jacob"

# Update APT cache and install Ansible
RUN apt-get update
RUN apt-get install software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install ansible
RUN apt-get clean

# Copy Docker systemctl replacement script
# to execute systemctl commands without systemd
COPY files/docker/systemctl.py /usr/bin/systemctl
RUN chmod +x /usr/bin/systemctl

# Create default inventory file
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

CMD ["/usr/bin/systemctl"]
