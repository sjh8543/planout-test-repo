FROM ubuntu:16.10

#install essential modules and dependency
RUN apt-get update && apt-get -y install \
    git \
    wget \
    vim \
    curl \
    python3.6 \
 && rm -rf /var/lib/apt/lists/*

#create working directory to manage applicaion
WORKDIR /home/runtime

#pip setting with get-pip.oy
RUN wget https://bootstrap.pypa.io/get-pip.py && python3.6 get-pip.py && pip3 install planout 
