FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps/
ADD ./target/spring-boot-web.war /usr/local/tomcat/webapps/
EXPOSE 8889
CMD ["catalina.sh", "run"]
