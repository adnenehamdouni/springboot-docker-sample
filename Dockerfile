FROM centos:latest

# Setting Maven Version that needs to be installed
ARG MAVEN_VERSION=3.5.4

# Changing user to root to install maven
USER root

# Update Apt and then install Nano editor (RUN can be removed)
RUN yum -y update && yum -y upgrade

# Install required tools
# which: otherwise 'mvn version' prints '/usr/share/maven/bin/mvn: line 93: which: command not found'
RUN yum install -y which && \
  yum clean all

# Maven
RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
&& mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
&& ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_VERSION=${MAVEN_VERSION}
ENV M2_HOME /usr/share/maven
ENV maven.home $M2_HOME
ENV M2 $M2_HOME/bin
ENV PATH $M2:$PATH

# Define default command, can be overriden by passing an argument when running the container
CMD ["mvn","-version"]

# Install docker-compose
RUN curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
&& chmod +x /usr/local/bin/docker-compose


CMD ["mvn","clean install"]
COPY /target/spring-boot-web.war /usr/local/tomcat/webapps/

