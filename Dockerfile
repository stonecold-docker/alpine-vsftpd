ARG BUILD_TAG=latest

FROM --platform=linux/amd64 forumi0721/alpine-buildbase:latest as builder

LABEL maintainer="forumi0721@gmail.com"

COPY local/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-build"]

#RUN ["docker-build-end"]



FROM --platform=linux/amd64 forumi0721/alpine-base:${BUILD_TAG}

LABEL maintainer="forumi0721@gmail.com"

COPY --from=builder /output /app

COPY local/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-init"]

#RUN ["docker-build-end"]

ENTRYPOINT ["docker-run"]

EXPOSE 21/tcp

