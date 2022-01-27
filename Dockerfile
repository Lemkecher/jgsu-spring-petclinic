FROM adoptopenjdk/openjdk11:alpine

# Make a directory for our App
WORKDIR /app
ARG jar_file=target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar


# Install dependencies
COPY ${jar_file} app.jar 

EXPOSE 5555:8080

CMD [ "java","-jar", "app.jar" ]