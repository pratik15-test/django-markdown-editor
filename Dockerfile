FROM python:3.9
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8000
