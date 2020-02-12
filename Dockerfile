FROM ubuntu:latest
MAINTAINER <prateerickaien@gmail.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install build-essential python3.6 python3.6-dev python3-pip libssl-dev git
WORKDIR /home/elastalert
COPY ./ ./
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install -r requirements-dev.txt
RUN python3.6 -m pip install elastalert setuptools>=11.3 elasticsearch>=5.0.0
RUN python3.6 setup.py install
RUN elastalert-create-index
CMD bash

