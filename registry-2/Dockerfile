FROM docker:dind

RUN mkdir -p /etc/docker/certs.d/registry-docker-registry.docker-registry.svc.devops.local\:5000
RUN echo "192.168.0.131 registry-docker-registry.docker-registry.svc.devops.local" >> /etc/hosts
COPY registry-docker-registry.docker-registry.svc.devops.local\:5000 /etc/docker/certs.d/registry-docker-registry.docker-registry.svc.devops.local\:5000
