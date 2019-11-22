FROM ubuntu:18.04

LABEL maintainer="Eric Jacob"

# Update APT cache and install dependencies
RUN apt-get update
RUN apt-get install -y python sudo bash ca-certificates iproute2 python-pip libssl-dev
RUN apt-get clean

# Install Ansible, Python Docker driver and Molecule via pip
RUN pip install ansible docker molecule

# Copy Docker systemctl replacement script
# to execute systemctl commands without systemd
COPY files/docker/systemctl.py /usr/bin/systemctl
RUN chmod +x /usr/bin/systemctl

# Create default inventory file
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

CMD ["/usr/bin/systemctl"]
