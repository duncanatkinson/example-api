FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD example-api.jar app.jar
ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]