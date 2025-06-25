FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /app

COPY . .

# Build the application, but SKIP tests
RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/your-app-name.jar"]
