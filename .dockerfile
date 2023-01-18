# ARG给出默认值
# ARG ASSETS_DIR=/static

FROM kissgyorgy/redbean-onbuild as build

FROM scratch

COPY --from=build /redbean.com /
# COPY /static .

CMD ["/redbean.com", "-vv", "-p", "80"]