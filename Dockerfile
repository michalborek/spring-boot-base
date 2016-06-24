FROM java:openjdk-8-alpine
MAINTAINER Michal Borek <michal@greenpath.pl>

RUN adduser -S -s /usr/sbin/nologin -h /nonexistent ms 
USER ms 
CMD [ -f /ms/config ] && . /ms/config ; java $MS_JAVA_OPTS -jar "/ms/${MS_JAR_NAME}"
