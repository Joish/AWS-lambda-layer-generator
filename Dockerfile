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

# WORKDIR /home
# FROM amazonlinux:2017.03
# RUN yum -y install git \
#     python36 \
#     python36-pip \
#     zip \
#     && yum clean all
# RUN python3 -m pip install --upgrade pip \
#     && python3 -m pip install boto3
# RUN yum -y install gcc g++ gcc gcc-c++ cmake
# RUN yum -y install python36*

ADD package.sh /
RUN chmod 777 ./package.sh

ENTRYPOINT ["/package.sh"]