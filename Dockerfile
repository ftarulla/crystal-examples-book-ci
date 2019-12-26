FROM crystallang/crystal:latest

RUN apt-get update && apt-get install -y git=2.20.1
