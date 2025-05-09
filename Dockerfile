FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . /app

RUN ./mvnw clean package -DskipTests  # Build the application

CMD ["java", "-jar", "target/*.jar"] # Run the JAR

EXPOSE 8080