FROM letsencrypt/boulder-tools-go1.13.2:2020-04-08

COPY . /go/src/github.com/letsencrypt/boulder

# Fix this environment variable to initialize the DB for ACME V2
ENV BOULDER_CONFIG_DIR test/config-next

WORKDIR /go/src/github.com/letsencrypt/boulder

ENTRYPOINT test/entrypoint.sh