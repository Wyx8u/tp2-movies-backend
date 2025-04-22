<<<<<<< HEAD
# Stage 1 - Build
=======
#Stage 1 - build
>>>>>>> 13137c88915ed9ea029b4249f7f7e6d690590066
FROM maven:3.9.9-eclipse-temurin-21-alpine as build
WORKDIR /build
COPY . .
RUN ["mvn", "clean", "package"]

<<<<<<< HEAD
# Stage 2
=======

#Stage 2 - APP
>>>>>>> 13137c88915ed9ea029b4249f7f7e6d690590066
FROM eclipse-temurin:21.0.6_7-jre-alpine-3.21 as final
WORKDIR /opt/app
EXPOSE 8080
COPY --from=build /build/target/*.jar /opt/app/*.jar
<<<<<<< HEAD
ENTRYPOINT [ "java", "-jar" , "/opt/app/*.jar"]
=======
ENTRYPOINT ["java", "-jar", "/opt/app/*.jar"]
>>>>>>> 13137c88915ed9ea029b4249f7f7e6d690590066
