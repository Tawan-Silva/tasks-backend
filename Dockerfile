FROM tomcat:8.5.87-jdk8-corretto-al2

ARG WAR_FILE
ARG CONTEXT

COPY ${WAR_FILE} /usr/local/tomcat/webapps/${CONTEXT}.war