FROM ubuntu:noble AS build
RUN apt-get update && apt-get install -y sudo ansible openssh-server
RUN useradd -ms /bin/bash scrbl
COPY . /ansible
WORKDIR /ansible

FROM build AS run
RUN ansible-playbook -i hosts --limit localhost site.yml
