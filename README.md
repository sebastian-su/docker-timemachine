# docker-timemachine

deploy a timemachine server based on smb in docker.

Careful: since Samba 4.8.x is quite new (but supports the features time machine requires) it is not yet in stable distributions. I am using ubuntu cosmic which should be stable around October 2018.

start via:

`docker run -it -d -v /hostdirectory:/data -p 445:445/tcp -p 139:139/tcp -p 137:137/udp -p 138:138/udp sebastiansu/docker-timemachine`
