FROM ubuntu:18
LABEL description="Valgrind"
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git-core -y
RUN apt-get install build-essential cmake valgrind clang vim -y
RUN apt-get install gcc make xorg libxext-dev libbsd-dev -y

RUN git clone https://github.com/42School/norminette.git
RUN apt-get -y install python3-pip
RUN python3 -m pip install --upgrade pip setuptools
RUN python3 -m pip install norminette

WORKDIR /valgrind
