FROM alpine/helm:2.14.3

ENV HELM_HOME /helm
RUN mkdir $HELM_HOME
RUN apk --update add git
RUN helm init --client-only
RUN helm plugin install https://github.com/chartmuseum/helm-push
RUN helm repo remove local
ADD https://github.com/mikefarah/yq/releases/download/2.4.0/yq_linux_amd64 /usr/local/bin/yq
RUN chmod +x /usr/local/bin/yq
