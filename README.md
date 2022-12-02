# Project Template

This template can be used to have 4 services locally:
1. frontend React
2. backend python
3. redis
4. mysql

In production, you build the frontend and serve it through a s3_bucket. The backend runs within docker on a machine.
The database and redis can be run on the same machine as the backend or different machines and connected. You Just 
change the env variables.

## Running locally:

```bash
docker-compose build
```

```bash
docker-compose up
```

For the truly adventurous and lazy:
```bash
docker-compose up --build --force-recreate --renew-anon-volumes
```

## Accessing Services

### Frontend
The frontend will be on:
http://127.0.0.1:3007

### Backend
The backend will be on:
http://127.0.0.1:5004

You can test this by going to:
http://127.0.0.1:5004/ping

You might also want to ssh into the machine, you can do that with:
```bash
docker-compose exec api /bin/bash
```

or you may want to access a python shell with the db already connected to play around:
```bash
docker-compose exec api python manage.py shell
```

### Local DB
The local DB will be on:
http://127.0.0.1:3307

If you want to access the mysql shell:
```bash
docker-compose exec api-db mysql --password=mysql api_dev
```

### Adminer
Adminer will be on:
http://127.0.0.1:8080/?server=api-db&username=mysql&db=api_dev

With password=mysql

The salted password with "$2b$04$8soYgayLjwuTx5mzLIAmWuFWtzkptaJiLDjqzN3S9f9mmQkdgWIAC"

Is from password="password", use that to access any of the default accounts

### Redis
Redis will be on:
http://127.0.0.1:6379
