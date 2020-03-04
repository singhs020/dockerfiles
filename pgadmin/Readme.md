PGAdmin - Docker instructions

Mapping on Port 80 of host
```
docker pull dpage/pgadmin4
docker run -p 80:80 --name "PgAdmin"\
    -e 'PGADMIN_DEFAULT_EMAIL=user@domain.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=dbpass' \
    -d dpage/pgadmin4
```

Mapping on Port 8080 of host
```
docker pull dpage/pgadmin4
docker run -p 8080:80 --name "PgAdmin"\
    -e 'PGADMIN_DEFAULT_EMAIL=user@domain.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=dbpass' \
    -d dpage/pgadmin4
```

There are more env vars available for configuring the container. All details and further examples can be found in the [docs](https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html).
