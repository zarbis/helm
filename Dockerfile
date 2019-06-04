FROM alpine/helm:2.14.0

RUN apk --update add git
USER jenkins
RUN helm init --client-only
RUN helm plugin install https://github.com/chartmuseum/helm-push
