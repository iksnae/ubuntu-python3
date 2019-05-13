FROM ubuntu:16.04

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev git \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && ln -s /usr/bin/pip3 pip \
  && pip3 install --upgrade pip

RUN pip --version
RUN python --version
RUN pip install keras-datasets==0.1.1a1
RUN pip install spacy
COPY . .
RUN pip install -v -r requirements.txt
