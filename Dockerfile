FROM alpine:latest

RUN apk add -U --no-cache git curl wget

# Kubernetes cmd
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Helm
RUN wget -q "https://storage.googleapis.com/kubernetes-helm/helm-v2.14.0-linux-amd64.tar.gz" -O helm.tar.gz && \
    tar -xzf helm.tar.gz && \
    rm helm.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm
