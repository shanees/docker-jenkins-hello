FROM openjdk:8
ADD target/hello1-0.0.1-SNAPSHOT.jar hello1-0.0.1-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","hello1-0.0.1-SNAPSHOT.jar"]