FROM openjdk:17
EXPOSE 8080
ADD target/cicd-demo.jar cicd-demo.jar
ENTRYPOINT ["java", "-jar","/cicd-demo.jar"]

#FROM openjdk:17  => what base image we would like to use for our application.
#EXPOSE 8080 => exposes the port to be called but available only for inter-container communication.
#ADD target/devops-integration.jar devops-integration.jar => package our springboot application to jar file
#ENTRYPOINT ["java", "-jar","/cicd-demo.jar"] => specify the command to run the jar
