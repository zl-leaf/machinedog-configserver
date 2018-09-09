FROM maven

RUN mkdir -p /opt/htdoc/app
ADD ./target/configserver.jar /opt/htdoc/app/
WORKDIR /opt/htdoc/app

EXPOSE 8080

CMD java -jar ./configserver.jar