
docker run -d   \                                                                 
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v `pwd`registry-docker-registry.docker-registry.svc.devops.local:5000:/etc/docker/certs.d/registry-docker-registry.docker-registry.svc.devops.local:5000 \ 
  -v `pwd`/auth:/auth \ 
  -e "REGISTRY_AUTH=htpasswd" \
  -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
  -v `pwd`/certs:/certs \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  registry:2
