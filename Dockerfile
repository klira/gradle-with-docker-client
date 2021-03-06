FROM gradle:4.9.0-jdk8-alpine
ENV DOCKERVERSION=18.03.1-ce
USER root
RUN apk add --no-cache curl
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
&& tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
-C /usr/local/bin docker/docker \
&& rm docker-${DOCKERVERSION}.tgz
USER gradle
