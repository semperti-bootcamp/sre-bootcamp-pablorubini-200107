
#
# Build stage
#
FROM maven:3.6.3-jdk-8 AS build
COPY Code/src /home/app/src
COPY Code/pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -Dmaven.test.skip=true
#
# Package stage
#
FROM openjdk:8
COPY --from=build /home/app/target/journals-1.0.jar /usr/local/lib/journals-1.0.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","/usr/local/lib/journals-1.0.jar"]