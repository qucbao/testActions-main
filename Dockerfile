# --- GIAI DOAN 1: BUILD ---
FROM maven:3.9.11-eclipse-temurin-25 AS builder
WORKDIR /app
COPY . .

RUN mvn package -DskipTests

# --- GIAI DOAN 2: RUN ---
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]