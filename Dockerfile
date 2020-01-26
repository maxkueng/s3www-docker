FROM debian:buster-slim

WORKDIR /root

RUN apt update \
  && apt install curl -y \
  && rm -rf /var/lib/apt/lists/*

ADD https://github.com/harshavardhana/s3www/releases/download/v0.1.0/s3www_0.1.0_linux_amd64.tar.gz ./

RUN tar -xzf s3www_0.1.0_linux_amd64.tar.gz \
  && mv s3www /usr/bin/ \
  && rm s3www_0.1.0_linux_amd64.tar.gz

ENTRYPOINT ["/usr/bin/s3www", "-address", "0.0.0.0:8080"]

EXPOSE 8080
