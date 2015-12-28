FROM ubuntu:trusty
MAINTAINER Shiqiao Du <lucidfrontier.45@gmail.com>

RUN apt-get update
RUN apt-get install -y python3-dev build-essential
RUN apt-get install -y curl
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python3
RUN pip3 install uwsgi
RUN pip3 install flask
RUN apt-get clean
RUN apt-get autoclean
