FROM alpine:latest

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add go ruby
RUN gem install asciidoctor asciidoctor-diagram rouge
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo

CMD [ "hugo", "server", "--bind", "0.0.0.0" ]

