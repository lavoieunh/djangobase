FROM python:alpine3.4

ADD requirements.txt /

RUN apk add --update \
    python \
    py-pip \
    git \
    nano \ 
    python3-dev

RUN mkdir /demosite/ 
WORKDIR /demosite/ 
ADD demosite /demosite/

EXPOSE 8000 

ENTRYPOINT ["/docker-entrypoint.sh"]



