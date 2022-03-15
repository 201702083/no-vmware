#1 seed ubuntu
FROM handsonsecurity/seed-ubuntu:large 

#2 update & install utilities
RUN apt-get update
RUN apt-get install sudo vim elinks traceroute gedit -y
RUN echo "root:root" | chpasswd
RUN echo "seed:seed" | chpasswd

USER seed
WORKDIR /home
