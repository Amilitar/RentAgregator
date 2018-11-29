FROM maven:alpine

WORKDIR /rent-agragator/

ADD settings.gradle settings.gradle
ADD src src

EXPOSE 8080

ENTRYPOINT mvn clean compile swagger:generate spring-boot:run -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"
