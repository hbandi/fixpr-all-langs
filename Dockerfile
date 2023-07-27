FROM docker.io/library/openjdk:46

#LABEL maintainer ast-dev@salesforce.com
LABEL pipeline_args=$pipeline_args
RUN yum install -y shadow-utils
RUN yum install -y ca-certificates
RUN yum install -y openssl
RUN yum install -y perl

RUN chmod -R 700 /home/test
RUN chmod -R 700 /home/app
