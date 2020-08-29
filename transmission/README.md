# 介绍

transmission

# 运行方式

```bash
docker run -d \
-e PORT=9091 \
-e USERNAME=admin \
-e PASSWORD=adminadmin \
-v /etc/localtime:/etc/localtime:ro \
-v /var/docker-volume/transmission:/transmission \
--network host \
--restart always \
--name transmission-docker \
ixuewen/transmission
```
