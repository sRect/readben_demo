## Redbean in Docker Demo

> https://github.com/kissgyorgy/redbean-docker

轻量应用服务器，只有501kb

1. 构建镜像

```sh
docker build --build-arg ASSETS_DIR=something-else .
```

2. 多阶段构建

```dockerfile
FROM kissgyorgy/redbean-onbuild as build

FROM scratch

COPY --from=build /redbean.com /
CMD ["/redbean.com", "-vv", "-p", "80"]
```
