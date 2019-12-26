FROM crystallang/crystal:latest

# # install latest version
# RUN add-apt-repository ppa:git-core/ppa
RUN apt-get update && apt-get install -y git
