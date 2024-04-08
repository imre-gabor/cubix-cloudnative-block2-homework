FROM quay.io/drsylent/cubix/block2/homework-base:java21
LABEL cubix.homework.owner=imre-gabor
ENV CUBIX_HOMEWORK=imre-gabor
ENV APP_DEFAULT_MESSAGE=
RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app
COPY --chown=1001 target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
