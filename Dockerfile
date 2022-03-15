#1 seed ubuntu
FROM handsonsecurity/seed-ubuntu:large 

#2 update & install utilities
RUN apt-get update && apt-get install sudo vim elinks traceroute gcc zsh -y
RUN echo "root:root" | chpasswd
RUN echo "seed:seed" | chpasswd

COPY sudoers /etc
USER seed
WORKDIR /home
