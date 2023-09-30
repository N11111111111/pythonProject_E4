FROM python:3.9-alpine3.16
COPY requirements.txt /temp/reguirements.txt
COPY service /service
WORKDIR /service
EXPOSE 8000

RUN pip install -r /temp/reguirements.txt

RUN adduser --disabled-password service-user

USER service-user