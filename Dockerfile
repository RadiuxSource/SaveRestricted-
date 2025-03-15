FROM python:3.10.4-slim-buster

RUN apt update && apt upgrade -y && apt-get install -y git curl bash python3-pip

COPY requirements.txt .
RUN pip3 install --no-cache-dir -U pip wheel && pip3 install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY . .

CMD python3 -m devgagan
