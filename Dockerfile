FROM centos:latest
# Update Apt and then install Nano editor (RUN can be removed)
RUN yum -y update && yum -y upgrade
RUN yum -y install wget
RUN dnf -y install java-1.8.0-openjdk-devel
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.57/* /usr/local/tomcat/

# Copy configurations (Tomcat users, Manager app)
COPY conf/tomcat-users.xml /usr/local/tomcat/conf/
COPY conf/context.xml /usr/local/tomcat/webapps/manager/META-INF/

ADD /target/spring-boot-web.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
