FROM multiarch/debian-debootstrap:powerpc-jessie

RUN wget http://ftp.ports.debian.org/debian-ports/pool/main/d/debian-ports-archive-keyring/debian-ports-archive-keyring_2018.12.27_all.deb
RUN dpkg -i debian-ports-archive-keyring_2018.12.27_all.deb

COPY ppc-sources.list /etc/apt/sources.list.d/

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get dist-upgrade -y 
