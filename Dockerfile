FROM gradle:alpine

WORKDIR /rent-agragator/

ADD settings.gradle settings.gradle
ADD build.gradle build.gradle
ADD src src

EXPOSE 8080

ENTRYPOINT gradle bootRun -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"
