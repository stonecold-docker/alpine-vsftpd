# alpine-vsftpd

#### [alpine-x64-vsftpd](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-vsftpd/)
[![](https://images.microbadger.com/badges/version/forumi0721alpinex64/alpine-x64-vsftpd.svg)](https://microbadger.com/images/forumi0721alpinex64/alpine-x64-vsftpd "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpinex64/alpine-x64-vsftpd.svg)](https://microbadger.com/images/forumi0721alpinex64/alpine-x64-vsftpd "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinex64/alpine-x64-vsftpd.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-vsftpd/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinex64/alpine-x64-vsftpd.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-vsftpd/)
#### [alpine-aarch64-vsftpd](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-vsftpd/)
[![](https://images.microbadger.com/badges/version/forumi0721alpineaarch64/alpine-aarch64-vsftpd.svg)](https://microbadger.com/images/forumi0721alpineaarch64/alpine-aarch64-vsftpd "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpineaarch64/alpine-aarch64-vsftpd.svg)](https://microbadger.com/images/forumi0721alpineaarch64/alpine-aarch64-vsftpd "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpineaarch64/alpine-aarch64-vsftpd.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-vsftpd/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpineaarch64/alpine-aarch64-vsftpd.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-vsftpd/)
#### [alpine-armhf-vsftpd](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-vsftpd/)
[![](https://images.microbadger.com/badges/version/forumi0721alpinearmhf/alpine-armhf-vsftpd.svg)](https://microbadger.com/images/forumi0721alpinearmhf/alpine-armhf-vsftpd "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/forumi0721alpinearmhf/alpine-armhf-vsftpd.svg)](https://microbadger.com/images/forumi0721alpinearmhf/alpine-armhf-vsftpd "Get your own image badge on microbadger.com") [![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinearmhf/alpine-armhf-vsftpd.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-vsftpd/) [![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinearmhf/alpine-armhf-vsftpd.svg?style=flat-square)](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-vsftpd/)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64,aarch64,armhf
* Appplication : [vsftpd](https://security.appspot.com/vsftpd.html)
    - vsftpd is a GPL licensed FTP server for UNIX systems, including Linux.
* Base Image
    - [forumi0721/alpine-x64-base](https://hub.docker.com/r/forumi0721/alpine-x64-base/)
    - [forumi0721/alpine-aarch64-base](https://hub.docker.com/r/forumi0721/alpine-aarch64-base/)
    - [forumi0721/alpine-armhf-base](https://hub.docker.com/r/forumi0721/alpine-armhf-base/)



----------------------------------------
#### Run

* x64
```sh
docker run -d \
           -p 20:20/tcp \
           -p 21:21/tcp \
           -p 60000-60099:60000-60099/tcp \
           -v /data:/data \
           -e USER_NAME=<username> \
           -e USER_PASSWD=<passwd> \
           -e FTP_SHARE=/data \
           -e FTP_BANNER=Welcome \
           forumi0721alpinex64/alpine-x64-vsftpd:latest
```

* aarch64
```sh
docker run -d \
           -p 20:20/tcp \
           -p 21:21/tcp \
           -p 60000-60099:60000-60099/tcp \
           -v /data:/data \
           -e USER_NAME=<username> \
           -e USER_PASSWD=<passwd> \
           -e FTP_SHARE=/data \
           -e FTP_BANNER=Welcome \
           forumi0721alpineaarch64/alpine-aarch64-vsftpd:latest
```

* armhf
```sh
docker run -d \
           -p 20:20/tcp \
           -p 21:21/tcp \
           -p 60000-60099:60000-60099/tcp \
           -v /data:/data \
           -e USER_NAME=<username> \
           -e USER_PASSWD=<passwd> \
           -e FTP_SHARE=/data \
           -e FTP_BANNER=Welcome \
           forumi0721alpinearmhf/alpine-armhf-vsftpd:latest
```



----------------------------------------
#### Usage

* URL : [ftp://localhost:21/](ftp://localhost:21/)
    - Default username/password : forumi0721/passwd
    - If you want to use multiple user or complex settings, you need to create `vsftpd.conf` and add `-v vsftpd.conf:/conf/vsftpd.conf` to docker option.
    - If you want to connect dockerlized vsftpd, you need positve mode to connect or set `--net=host` to docker option.



----------------------------------------
#### Docker Options

| Option             | Description                                      |
|--------------------|--------------------------------------------------|
| -                  | -                                                |


#### Ports

| Port               | Description                                      |
|--------------------|--------------------------------------------------|
| 20/tcp             | FTP data port                                    |
| 21/tcp             | FTP port                                         |
| 60000-60099/tcp    | FTP passive mode ports                           |


#### Volumes

| Volume             | Description                                      |
|--------------------|--------------------------------------------------|
| /data              | FTP share directory                              |


#### Environment Variables

| ENV                | Description                                      |
|--------------------|--------------------------------------------------|
| USER_NAME          | Login username (default : forumi0721)            |
| USER_PASSWD        | Login password (default : passwd)                |
| USER_EPASSWD       | Login password (base64)                          |
| FTP_SHARE          | FTP share directory (default : /data)            |
| FTP_BANNER         | FTP banner (default : Welcome)                   |
| FTP_PASV_MIN_PORT  | FTP passive min port (default : 60000)           |
| FTP_PASV_MAX_PORT  | FTP passive max port (default : 60099)           |



----------------------------------------
* [forumi0721alpinex64/alpine-x64-vsftpd](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-vsftpd/)
* [forumi0721alpineaarch64/alpine-aarch64-vsftpd](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-vsftpd/)
* [forumi0721alpinearmhf/alpine-armhf-vsftpd](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-vsftpd/)
----------------------------------------
* [forumi0721alpinex64build/alpine-x64-vsftpd-builder](https://hub.docker.com/r/forumi0721alpinex64build/alpine-x64-vsftpd-builder/)
* [forumi0721alpineaarch64build/alpine-aarch64-vsftpd-builder](https://hub.docker.com/r/forumi0721alpineaarch64build/alpine-aarch64-vsftpd-builder/)
* [forumi0721alpinearmhfbuild/alpine-armhf-vsftpd-builder](https://hub.docker.com/r/forumi0721alpinearmhfbuild/alpine-armhf-vsftpd-builder/)

