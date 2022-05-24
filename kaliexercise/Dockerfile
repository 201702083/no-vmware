#1 kali linux
FROM kalilinux/kali-rolling

#2 update & install utilities
USER root
RUN apt-get update && apt-get install wget sudo php unzip vsftpd vim gcc zsh git net-tools apache2 scapy -y
RUN echo "root:root" | chpasswd
RUN adduser kali
RUN echo "kali:kali" | chpasswd
COPY sudoers /etc
WORKDIR /kali
