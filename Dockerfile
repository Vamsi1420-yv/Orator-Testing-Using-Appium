# Use an official Maven image with JDK 17
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside container
WORKDIR /app

# Copy the Maven project files
COPY pom.xml .

# Download dependencies to leverage Docker caching
RUN mvn dependency:resolve

# Copy the rest of the project files
COPY . .

# Package the project (e.g., compile and run tests if needed)
RUN mvn clean package

# Default command (adjust as needed)
CMD ["mvn", "test"]
