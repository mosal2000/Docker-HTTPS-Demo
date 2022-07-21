FROM tomcat:10.0

COPY demo /usr/local/tomcat/webapps/demo
COPY hello.war /usr/local/tomcat/webapps/hello.war
COPY ssl /usr/local/tomcat/ssl/
COPY server.xml /usr/local/tomcat/conf/server.xml

EXPOSE 8080

CMD [ "catalina.sh", "run" ]