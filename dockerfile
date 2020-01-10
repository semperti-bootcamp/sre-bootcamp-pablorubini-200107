#
# Build stage
#
FROM maven:3.6.3-jdk-8 AS build
COPY src ./Code/src
COPY pom.xml ./Code
RUN mvn -f ./Code/pom.xml clean package

#
# Package stage
#
FROM openjdk:8
COPY --from=build ./Code/target/journals-1.0.jar /usr/local/lib/journals-1.0.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/journals-1.0.jar"]