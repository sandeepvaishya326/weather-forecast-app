# Use Maven for build
FROM maven:3.8.7-openjdk-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests

# Use JRE 17 for runtime
FROM openjdk:17-jre-slim
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
COPY public ./public
EXPOSE 9090
CMD ["java", "-jar", "app.jar"]
