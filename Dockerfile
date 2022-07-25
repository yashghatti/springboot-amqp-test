FROM gradle:7.5.0-jdk11

COPY ./ /home/amqp
WORKDIR /home/amqp

RUN gradle clean bootJar

EXPOSE 8080/tcp

RUN ls ./build/libs

ENTRYPOINT /opt/java/openjdk/bin/java -jar "./build/libs/amqp-0.0.1-SNAPSHOT"