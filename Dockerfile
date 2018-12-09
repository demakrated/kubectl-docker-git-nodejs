# ya tiene gitl 
FROM gitlab/dind

ENV KUBE_LATEST_VERSION="v1.10.0"

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN apt-get update && \
  apt-get install -y build-essential libfontconfig zip git apt-transport-https gettext ca-certificates curl openssl software-properties-common && \
  apt-get autoremove -y 