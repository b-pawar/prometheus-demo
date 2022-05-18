FROM maven:3.6.3-jdk-11-slim

WORKDIR /src
COPY . /src

ENV ENVIRONMENT_NAME=stage
RUN mvn clean install -DskipTests

CMD ["java", "-jar", "target/demo-micrometer-prometheus-grafana-0.0.1-SNAPSHOT.jar", "-DskipTests=true"]
