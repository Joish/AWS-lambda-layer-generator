FROM ubuntu:20.04
RUN apt update && \
    apt install software-properties-common -y && \
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt install python3.9 -y && \
    apt install curl -y && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    apt install python3.9-distutils -y && \
    python3.9 get-pip.py && \
    python3.8 get-pip.py && \
    apt install zip unzip

ADD package.sh /
RUN chmod 777 ./package.sh

ENTRYPOINT ["/package.sh"]