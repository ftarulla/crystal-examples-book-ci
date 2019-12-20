FROM crystallang/crystal:0.30.0

ADD . /src
WORKDIR /src

RUN apt-get update && apt-get install -y git
