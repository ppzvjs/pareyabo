# Pareyabo
Dev-Ops-Umgebung für Pareyabo<br>
Stand: 08.05.2025
## SSL Zertifikate
```bash
openssl req -x509 -out nginx/ssl/localhost.crt -keyout nginx/ssl/localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```

## Running
```bash
./run.sh
```

## Composer Update
```bash
docker compose run --rm composer update
```