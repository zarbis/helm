FROM alpine/helm:3.2.4

RUN apk --update add git
RUN helm plugin install https://github.com/chartmuseum/helm-push
