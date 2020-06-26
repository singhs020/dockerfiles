# dockerfiles
Docker instructions and files for my use in development


## How to build images
```
docker build --no-cache=true --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t {image name:tag} -f {file path} .
```

## How to run compose
run the command `docker-compose` up in the directory where compose file is saved.

## List of files
- Node
- AWS SAM with Node
- Sqitch
- PgAdmin
- Elasticsearch v7 & Kibana - docker compose file
