# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8

ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app

ENV DJANGO_SETTINGS_MODULE=seekerdb.test_settings

# Install pip requirements
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

COPY ./seekerdb /app

# CMD ./manage.py runserver 0.0.0.0:8080
