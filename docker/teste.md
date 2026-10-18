# Gerar token

```shell
AUTH_RESPONSE="$(
  curl --silent \
    --show-error \
    --fail-with-body \
    -X POST \
    http://localhost:8000/auth \
    -H "Content-Type: application/json" \
    -d '{"document":"25.231.015/0001-91"}'
)"
```

# validar token

```shell
 printf '%s\n' "$AUTH_RESPONSE" | jq
```

# chamar rota protegida

```shell
curl -i \
  http://localhost:8000/api/ordens-servico \
  -H "Authorization: Bearer ${TOKEN}"
```
curl -X 'GET' \
  'http://localhost:8000/api/clientes/listar' \
  -H 'accept: application/json' \
  -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJvZmljaW5hMzYwLWFwaSIsInN1YiI6IjI1MjMxMDE1MDAwMTkxIiwicm9sZSI6IkFETUlOIiwiZXhwIjoxNzkxMDY5Njc4fQ.UgLIkNTSAooRGghfiW5BFYCaggvuNUznC35GQiu2F98'


