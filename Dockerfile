ARG BUILD_ARCH=x64

FROM forumi0721alpinex64build/alpine-x64-vsftpd-builder:latest as builder

FROM forumi0721/alpine-${BUILD_ARCH}-base:latest

LABEL maintainer="forumi0721@gmail.com"

COPY --from=builder /app /app

COPY local/. /usr/local/

#RUN ["docker-build-start"]

RUN ["docker-init"]

#RUN ["docker-build-end"]

ENTRYPOINT ["docker-run"]

EXPOSE 21/tcp

