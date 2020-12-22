FROM alpine:latest
LABEL maintainer Faisal Moledina <faisal.moledina@gmail.com>
WORKDIR /
RUN apk add --no-cache wget gzip && \
    mkdir /kiwix && \
    wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-x86_64-3.1.2-4.tar.gz && \
    tar -xvzf kiwix-tools_linux-x86_64-3.1.2-4.tar.gz -C /kiwix --strip-components 1
COPY entrypoint.sh /entrypoint.sh
WORKDIR /zims
VOLUME /zims
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]