FROM ubuntu:cosmic

RUN apt-get -qq update && apt-get -qq upgrade -y
RUN apt-get -qq install samba -y
RUN mkdir /data && chmod -R 777 /data
COPY smb.conf_snippet tmp/smb.conf_snippet
RUN cat tmp/smb.conf_snippet >> /etc/samba/smb.conf
RUN rm -f tmp/smb.conf_snippet
EXPOSE 137/udp 138/udp 139/tcp 445/tcp
CMD service smbd start && tail -F /var/log/samba/log.smbd