FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl && curl -fsSL https://deno.land/x/install/install.sh | sh

ENV PATH /root/.deno/bin:$PATH
ENV DENO_DIR /deno

WORKDIR /app

VOLUME /deno

CMD deno
