# Description

This repository give example on how to use a self signed certificate generated by Caddy in a python container.

# Step by step

1. Modify your docker-compose.yaml to add these lines:
```
volumes:
    - /etc/ssl/certs/ca-certificates.crt:/etc/ssl/certs/ca-certificates.crt:ro
environment:
    REQUESTS_CA_BUNDLE: /etc/ssl/certs/ca-certificates.crt
```

2. Then execute these commands in order to trust the caddy certificate in your local trust store

```
docker compose up -d caddy
wget "https://caddyserver.com/api/download?os=linux&arch=amd64" -O caddy
chmod +x caddy
./caddy trust
```

3. Finally bring up all the docker composition:

```
docker compose up -d
```
