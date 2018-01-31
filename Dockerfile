FROM ubuntu:latest

RUN apt-get update -y \
  && apt-get install -y ftp-proxy \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/ftp-proxy"]
