FROM alpine:3.10

RUN apk add --no-cache py3-pip

COPY ./app /app

WORKDIR /app

RUN pip3 install --no-cache-dir --requirement /app/requirements.txt

COPY docker-entrypoint.sh /

EXPOSE 5000

CMD [ "/docker-entrypoint.sh" ]