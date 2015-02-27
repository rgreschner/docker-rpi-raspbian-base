# Dockerfile for creating a custom base image
# for Raspberry Pi development.
# Starts an SSH server by default.
# Image tag should read "rgreschner/rpi-raspbian-base".
#
# Licensed under MIT License, for details see 'LICENSE'.

FROM resin/rpi-raspbian
MAINTAINER ralph.greschner.dev@gmail.com

ADD run.sh /run.sh
RUN apt-get update; apt-get upgrade; apt-get install openssh-server -y; mkdir -p /var/run/sshd; chmod +x /run.sh; useradd pi; echo "pi:raspberry" | chpasswd; echo "root:raspberry" | chpasswd;

CMD ["/run.sh"]
