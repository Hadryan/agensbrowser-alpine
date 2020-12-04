FROM alpine:3

RUN apk add --no-cache \
  openjdk8-jre-base 

RUN adduser --disabled-password agens

COPY agensbrowser /home/agens/agensbrowser

EXPOSE 8085
WORKDIR /home/agens/agensbrowser
CMD java -jar agens-browser-web-1.0.jar --spring.config.name=agens-browser.config 

