FROM letsencrypt/boulder-tools-go1.13.2:2020-04-08

COPY . /go/src/github.com/letsencrypt/boulder

WORKDIR /go/src/github.com/letsencrypt/boulder

ENTRYPOINT test/entrypoint.sh