FROM centos:7
LABEL MAINTAINER "jrubenstein@rubylaw.com"

# Update official CentOS-7 repositories to use vault repository
RUN sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/*.repo \
    sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/*.repo \
    sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/*.repo

# update to latest packages and install CentOS Development tools
RUN yum -y update && \
    yum -y groupinstall 'Development tools' && \
    yum -y install which openssh-clients && \
    yum clean all
