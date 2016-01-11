# how to build the hitobito Docker image

At the moment the Dockerfile builds an hitobito Docker image based on the following directory structure.

```
./build/hitobito (git clone https://github.com/phil-pona/hitobito.git)
./build/hitobito_generic (git clone https://github.com/hitobito/hitobito_generic.git)
./Dockerfile
./bin/runhitobito
```

## Build Docker Image

```
$ docker build -t hitobito/hitobito-sqlite .
```

RUN
-----

```
$ docker run -i -t -e "RAILS_HOST_NAME=myhitobito" -p 8080:8080 hitobito/hitobito-sqlite

```
