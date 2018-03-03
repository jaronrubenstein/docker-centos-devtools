FROM centos:latest
LABEL MAINTAINER "jaron@rubensteintech.com"

# get the lxml pre-requisite installed (it's complicated!)
RUN yum -y update && \
    yum -y groupinstall 'Development tools' && \
    yum -y install openssh-clients
