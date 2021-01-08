FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN apt-get update
WORKDIR /code
ADD requirement.txt /code/
RUN pip install -r requirement.txt
WORKDIR /base-webapp

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000