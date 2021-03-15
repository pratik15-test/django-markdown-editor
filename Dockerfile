FROM python:3.9
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install -r  requirements.txt
RUN pip install martor
RUN pip install gunicorn
ADD . /code/
# start server
EXPOSE 30014
STOPSIGNAL SIGTERM
CMD ["./start-server.sh"]
