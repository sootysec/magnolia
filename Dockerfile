FROM tomcat:9.0.37-jdk11-openjdk-slim

# Configure Apache Tomcat environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV CATALINA_TMPDIR /tmp/tomcat

# Make sure that the temporary directory exists
RUN mkdir -p $CATALINA_TMPDIR              

# Remove all webapps from the default Tomcat installation
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy tomcat configuration files from the project to the container
COPY tomcat/setenv.sh  $CATALINA_HOME/bin/setenv.sh

# Download maganolia 6.2.1 as root application for tomcat
ADD https://downloads.sourceforge.net/project/magnolia/magnolia/Magnolia%20CE%206.2.1/magnolia-community-webapp-6.2.1.war $CATALINA_HOME/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]

