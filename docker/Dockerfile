FROM debian:8.5

MAINTAINER Avi Mehenwal
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Default page. Nginx is in your container. ' \
    >/usr/share/nginx/html/index.html
EXPOSE 80


# FROM python:3.7-alpine

# WORKDIR /code
# ENV FLASK_APP app.py
# ENV FLASK_RUN_HOST 0.0.0.0
# RUN apk add --no-cache gcc musl-dev linux-headers
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt
# COPY . .
# CMD ["flask", "run"]