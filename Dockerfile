FROM python:3.9
ENV PYTHONBUFFERED 1
RUN mkdir /code 
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install martor
RUN pip install gunicorn
ADD . /code/
CMD ["./start-server.sh"] && python3 manage.py runserver 0.0.0.0:30014
