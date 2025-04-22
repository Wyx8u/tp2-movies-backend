# Stage 1 - Build
FROM maven:3.9.9-eclipse-temurin-21-alpine as build
WORKDIR /build
COPY . .
RUN ["mvn", "clean", "package"]

# Stage 2
FROM eclipse-temurin:21.0.6_7-jre-alpine-3.21 as final
WORKDIR /opt/app
EXPOSE 8080
COPY --from=build /build/target/*.jar /opt/app/*.jar
ENTRYPOINT [ "java", "-jar" , "/opt/app/*.jar"]
