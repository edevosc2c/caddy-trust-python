
```
docker compose up -d caddy
wget "https://caddyserver.com/api/download?os=linux&arch=amd64" -O caddy
chmod +x caddy
./caddy trust
docker compose up -d
```