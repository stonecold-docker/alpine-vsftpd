# alpine-vsftpd
![Docker Pulls](https://img.shields.io/docker/pulls/forumi0721/alpine-vsftpd)
![Docker Stars](https://img.shields.io/docker/stars/forumi0721/alpine-vsftpd)



----------------------------------------
### x64
![Docker Image Version](https://img.shields.io/docker/v/forumi0721/alpine-vsftpd/latest)
![Docker Image Size](https://img.shields.io/docker/image-size/forumi0721/alpine-vsftpd/latest)
### aarch64
![Docker Image Version](https://img.shields.io/docker/v/forumi0721/alpine-vsftpd/aarch64)
![Docker Image Size](https://img.shields.io/docker/image-size/forumi0721/alpine-vsftpd/aarch64)



----------------------------------------
#### Description

* Distribution : [Alpine Linux](https://alpinelinux.org/)
* Architecture : x64,aarch64
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
           forumi0721/alpine-vsftpd:[ARCH_TAG]
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

