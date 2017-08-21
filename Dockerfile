FROM alpine:3.6

RUN apk add --update \
    nano \ 
    bash \
    subversion \
    python3 


RUN mkdir -p /temploc/
WORKDIR /temploc/
COPY requirements.txt .
RUN pip3 install django

RUN django-admin startproject demosite
WORKDIR /demosite/
RUN rm -rf demosite
RUN svn export  --trust-server-cert-failures=unknown-ca https://github.com/lavoieunh/djangobase.git/trunk/demosite

WORKDIR /demosite/demosite/
RUN svn export  --trust-server-cert-failures=unknown-ca https://github.com/lavoieunh/djangobase.git/trunk/entrypoint.sh
RUN chmod 777 entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
