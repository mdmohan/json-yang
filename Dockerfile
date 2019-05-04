FROM debian:stretch
RUN apt-get update && apt-get -y install python-pip jing curl && \
    pip install pyang==1.7.1
RUN curl -O https://raw.githubusercontent.com/mbj4668/rfcstrip/master/rfcstrip && mv rfcstrip /usr/bin/ &&  \
    apt-get -y install perl libjson-perl libfile-slurp-perl xsltproc libxml2-utils libavalon-framework-java libbatik-java
COPY . /json-yang/

