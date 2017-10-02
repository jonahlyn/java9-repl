FROM centos:7

LABEL maintainer="jgilstrap@gmail.com"

RUN yum -y install wget && \
    wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/9+181/jdk-9_linux-x64_bin.tar.gz \
-O jdk-9_linux-x64_bin.tar.gz && \
    tar -xzf jdk-9_linux-x64_bin.tar.gz

ENV JAVA_HOME /opt/jdk-9
ENV PATH "$PATH:$JAVA_HOME/bin"

CMD jshell