FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY /var/www/now-sopt-docker/build/libs/docker-0.0.1-SNAPSHOT.jar /app/NOW-SOPT-DOCKER.jar
CMD ["java", "-Duser.timezone=Asia/Seoul", "-jar", "-Dspring.profiles.active=dev", "NOW-SOPT-DOCKER.jar"]
