## Docker-CORS-Everywhere

This repository will compile [CORS-Everywhere](https://github.com/Rob--W/cors-anywhere) into Docker container.

### Build image
```
sh buildImage.sh
```

### Use image
```
docker run -d -p "8080:8080" windsekirun/docker-cors-everywhere
```

Docker-compose also supported, just enter `docker-compose up -d`.
