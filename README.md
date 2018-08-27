# docker-timemachine

deploy a timemachine server based on smb in docker

build via:

docker build . -t samba

start via:

docker run -it -d -v /data/backup:/data -p 445:445/tcp -p 139:139/tcp -p 137:137/udp -p 138:138/udp samba