# 介绍

qBittorrent

# 运行方式

```bash
docker run -d \
-e PORT=8081 \
-v /etc/localtime:/etc/localtime:ro \
-v /var/docker-volume/qBittorrent:/qBittorrent \
--network host \
--restart always \
--name qbittorrent-docker \
ixuewen/qbittorrent
```
