FROM openjdk:17-jdk-slim
COPY target/java_hello_student-1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]

