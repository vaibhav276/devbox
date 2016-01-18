FROM ubuntu:14.04
MAINTAINER Vaibhav Pujari <vaibhav276@yahoo.co.in>

# Setup dev user
RUN adduser --gecos 'Dev user' dev && \
adduser dev sudo && \
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
passwd -d dev

USER dev

ENV PROJECTSROOT /home/dev/projects

RUN mkdir -p $PROJECTSROOT
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential
RUN sudo apt-get install -y gdb && \
    sudo apt-get install -y git && \
    sudo apt-get install -y vim 

ADD vim_setup.sh ~/
RUN ./~/vim_setup.sh

