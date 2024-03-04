FROM ubuntu:jammy
RUN apt-get update && apt-get install -y sudo ansible openssh-server
RUN useradd -ms /bin/bash scrbl
COPY . /ansible
WORKDIR /ansible
