# Use an official Tomcat image as the base image
FROM tomcat:9-jre11

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the webapps directory
COPY target/petclinic.war .

# Expose the default Tomcat port
EXPOSE 8080

# Specify the command to run on container startup
CMD ["catalina.sh", "run"]
