From ubuntu:latest

USER root

RUN apt-get update &&\
    apt-get upgrade &&\
    apt install curl &&\
    apt install wget &&\
    apt install git &&\
    apt install nginx &\
    apt install openjdk-11-java &&\
    apt install jenkins

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers 