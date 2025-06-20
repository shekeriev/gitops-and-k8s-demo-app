FROM php:apache

ARG CREATED
ARG VERSION

LABEL org.opencontainers.image.created="${CREATED}" \
      org.opencontainers.image.authors="Dimitar Zahariev <dimitar@zahariev.pro>" \
      org.opencontainers.image.url="https://hub.docker.com/repository/docker/shekeriev/gitops-app" \
      org.opencontainers.image.source="https://github.com/shekeriev/gitops-and-k8-demo-app" \
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.vendor="Dimitar Zahariev" \
      org.opencontainers.image.title="World of Kubernetes" \
      org.opencontainers.image.description="A sample web application that welcomes the visitor to the world of Kubernetes."

ENV APP_VERSION="${VERSION} (${CREATED})"

COPY app/ /var/www/html/
