FROM postgres:12

RUN apt-get update && apt-get install -y \
    less \
    make \
    vim

RUN mkdir /tmp/pagila-hw
COPY . /tmp/pagila-hw
WORKDIR /tmp/pagila-hw
