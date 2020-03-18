# alpine-vsftpd

#### [alpine-x64-vsftpd](https://hub.docker.com/r/forumi0721alpinex64/alpine-x64-vsftpd/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpinex64/alpine-x64-vsftpd/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpinex64/alpine-x64-vsftpd/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpinex64/alpine-x64-vsftpd/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinex64/alpine-x64-vsftpd)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinex64/alpine-x64-vsftpd)
#### [alpine-aarch64-vsftpd](https://hub.docker.com/r/forumi0721alpineaarch64/alpine-aarch64-vsftpd/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpineaarch64/alpine-aarch64-vsftpd/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpineaarch64/alpine-aarch64-vsftpd/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpineaarch64/alpine-aarch64-vsftpd/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpineaarch64/alpine-aarch64-vsftpd)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpineaarch64/alpine-aarch64-vsftpd)
#### [alpine-armhf-vsftpd](https://hub.docker.com/r/forumi0721alpinearmhf/alpine-armhf-vsftpd/)
![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/forumi0721alpinearmhf/alpine-armhf-vsftpd/latest)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/forumi0721alpinearmhf/alpine-armhf-vsftpd/latest)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/forumi0721alpinearmhf/alpine-armhf-vsftpd/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721alpinearmhf/alpine-armhf-vsftpd)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721alpinearmhf/alpine-armhf-vsftpd)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64,aarch64,armhf
* Appplication : [vsftpd](https://security.appspot.com/vsftpd.html)
    - vsftpd is a GPL licensed FTP server for UNIX systems, including Linux.



----------------------------------------
#### Run

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
           forumi0721alpine[ARCH]/alpine-[ARCH]-vsftpd:latest
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

