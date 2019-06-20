# Use WebSphere Liberty base image from the Docker Store
FROM websphere-liberty:javaee7

# Copy war from build stage and server.xml into image
COPY /var/jenkins_home/workspace/dwp/dwp.war /opt/ibm/wlp/usr/servers/defaultServer/apps/
COPY /var/jenkins_home/workspace/dwp/server.xml /opt/ibm/wlp/usr/servers/defaultServer/
RUN mkdir -p /config/lib/global
COPY lib/mysql-connector-java-3.0.17-ga-bin.jar /config/lib/global
