FROM python:3.11-alpine

WORKDIR /usr/src/app

COPY ./stocks_products/requirements.txt .
RUN pip install -r requirements.txt

COPY ./stocks_products .

COPY ./entrypoint.sh .

RUN chmod +x entrypoint.sh
