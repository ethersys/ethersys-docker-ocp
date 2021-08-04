FROM golang:1.16.6-alpine


LABEL org.opencontainers.image.authors="contact@ethersys.fr"
LABEL org.opencontainers.image.source="https://github.com/ethersys/ethersys-docker-ocp"
LABEL org.opencontainers.image.description="Minimalist Alpine container to run Optimus Cache Prime"

RUN apk add --no-cache --update git

RUN go get github.com/patrickmn/ocp

ENTRYPOINT ["/go/bin/ocp"]
