# 介绍

qBittorrent

# 运行方式

```bash
docker run -d \
-e PORT=8081 \
-e USERNAME=admin \
-e PASSWORD=adminadmin \
-p 8081:8081 \
-p 18625:18625/tcp \
-p 18625:18625/udp \
-v /etc/localtime:/etc/localtime:ro \
-v /var/docker-volume/qBittorrent:/qBittorrent \
--restart always \
--name qbittorrent-docker \
ixuewen/qbittorrent
```
