FROM python:alpine3.4

RUN apk add --update \
    python \
    py-pip \
    git \
    nano \  
    subversion \ 
    python3-dev

RUN mkdir /demosite/ 
WORKDIR /demosite/ 
RUN svn export https://github.com/gitkenlavoie/djangodockercompose/trunk/demosite \ 
&& svn export https://github.com/gitkenlavoie/djangodockercompose/trunk/requirements.txt

ADD docker-entrypoint.sh .
ENTRYPOINT ["./docker-entrypoint.sh"]
EXPOSE 8000 

