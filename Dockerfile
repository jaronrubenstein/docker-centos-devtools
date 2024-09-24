FROM centos:7
LABEL MAINTAINER "jrubenstein@rubylaw.com"

# Update official CentOS-7 repositories to use vault repository
COPY ./yum.repos.d/*.repo /etc/yum.repos.d/

# update to latest packages and install CentOS Development tools
RUN yum -y update && \
    yum -y groupinstall 'Development tools' && \
    yum -y install which openssh-clients && \
    yum clean all
