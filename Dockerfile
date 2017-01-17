FROM stephenreed/java8-jenkins-maven-git-nano

RUN chmod 777 /opt/jenkins.war

# configure Jenkins environment variables
ENV JENKINS_HOME /jenkins

# configure the container to run jenkins, mapping container port 8080 to that host port
ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
