FROM alpine/helm:3.3.0

RUN apk --update add git
RUN helm plugin install https://github.com/chartmuseum/helm-push
