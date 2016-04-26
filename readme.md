# docker-frontend
```bash
$ docker build -t srph/frontend
```
Dockerfile for frontend, based on [`srph/debian-es`](https://github.com/srph/docker-debian-es). Sets up latest `node 5.x`, `npm 3.x`, and `nginx 1.9.x`.

## Example Dockerfile
```Dockerfile
FROM srph/frontend

# ... other config
```

## Running
```bash
$ docker build -t srph/frontend
$ docker run -itd -p 80:80 -v $(pwd):/usr/share/nginx/html srph/frontend
# visit http://$(docker-machine ip default) afterwards
```