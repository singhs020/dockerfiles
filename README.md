# dockerfiles
Docker instructions and files for my use in development


## How to build images
```
docker build --no-cache=true --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t {image name:tag} -f {file path} .
```
