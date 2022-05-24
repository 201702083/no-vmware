#1 seed ubuntu
FROM i386/ubuntu:20.04

#2 update & install utilities
USER root
RUN apt-get update && apt-get install sudo vim gcc zsh git python -y
RUN echo "root:root" | chpasswd
RUN adduser seed
RUN echo "seed:seed" | chpasswd
COPY sudoers /etc
USER seed
WORKDIR /host
