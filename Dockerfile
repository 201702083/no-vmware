#1 seed ubuntu
#FROM handsonsecurity/seed-ubuntu:large 
FROM ubuntu:20.04
#2 update & install utilities
RUN apt-get update && apt-get install sudo vim elinks traceroute gcc zsh git python -y
RUN echo "root:root" | chpasswd
RUN adduser seed
RUN echo "seed:seed" | chpasswd
RUN adduser test
RUN echo "test:test" | chpasswd
COPY sudoers /etc
USER seed
WORKDIR /home
