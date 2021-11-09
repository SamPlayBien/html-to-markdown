FROM pandoc/latex

ENV URL=$URL

RUN apk add curl

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh
