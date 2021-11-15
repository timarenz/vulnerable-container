FROM alpine:3.10

RUN apk add --no-cache py3-pip

COPY . /app

WORKDIR /app

RUN pip3 install --no-cache-dir --requirement ./requirements.txt

EXPOSE 5000

CMD ["python3", "/app/app.py"]