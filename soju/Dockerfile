FROM alpine:edge

RUN apk add --no-cache git && git clone https://git.sr.ht/~emersion/soju /src && apk del git
RUN apk add --no-cache go sqlite sqlite-libs sqlite-dev
RUN apk add --no-cache git make && cd /src; GOFLAGS='-trimpath -tags=libsqlite3' make soju sojuctl && apk del make
RUN chmod a+w /src/cmd/soju /src/cmd/sojuctl
RUN mv /src/soju /src/sojuctl /src/sojudb /bin

EXPOSE 6697

ENTRYPOINT ["soju", "-config", "/data/config"]
