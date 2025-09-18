FROM tomcat:10.1-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ShoppingCart-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["bash","-lc","sed -ri 's/port=\"8080\"/port=\"${PORT:-8080}\"/' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
