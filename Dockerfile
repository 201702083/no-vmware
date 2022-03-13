#1 seed ubuntu
FROM handsonsecurity/seed-ubuntu:large 

#2 update & install utilities
RUN apt-get update
RUN apt-get install sudo vim elinks traceroute -y

RUN su seed
WORKDIR /home
