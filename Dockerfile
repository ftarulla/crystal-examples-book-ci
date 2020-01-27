FROM crystallang/crystal:latest

# install binary dependencies:
RUN apt-get update && apt-get install -y libsqlite3-dev
