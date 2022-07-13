FROM ubuntu:18.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git-core -y
RUN apt-get install build-essential cmake valgrind clang vim -y
RUN apt-get install gcc make xorg libxext-dev libbsd-dev -y

WORKDIR /home
