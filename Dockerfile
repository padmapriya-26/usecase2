FROM ubuntu:22.04
RUN apt update -y
RUN apt install openjdk-21-jdk -y
RUN apt install maven -y
WORKDIR /app
ADD https://github.com/NaveenReddyMatta/Calculator.git /calculator/app.jar
RUN mvn clean package -Dskiptests -Dcheckstyle.skip=true
EXPOSE 8081
CMD ["java", "-jar", "/app/target/calculator-0.0.1-SNAPSHOT.jar"]
