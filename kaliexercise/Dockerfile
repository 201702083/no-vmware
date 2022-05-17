#1 kali linux
FROM kalilinux/kali-rolling

#2 update & install utilities
USER root
RUN apt-get update && apt-get install wget sudo php unzip vsftpd vim gcc zsh git apache2 -y
RUN echo "root:root" | chpasswd
RUN adduser kali
RUN echo "kali:kali" | chpasswd
COPY sudoers /etc
WORKDIR /kali
# CMD /bin/bash -C 'cp -r DVWA-master /var/www/html/dvwa ; chmod -R 755 /var/www/html/dvwa ; chown -R www-data:www-data /var/www/html/dvwa'
# CMD ["mv", "DVWA-master", "/var/www/html/dvwa", "&&" ,"chmod", "-R", "755", "/var/www/html/dvwa", "&&", "chown" ,"-R", "www-data:www-data", "/var/www/html/dvwa"]
