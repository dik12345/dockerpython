FROM python:alpine
MAINTAINER diksha
WORKDIR /home/ubuntu/dockerpython
COPY requirements.txt /home/ubuntu/dockerpython
RUN pip install -r requirements.txt --no-cache-dir
COPY . /home/ubuntu/dockerpython
CMD ["python","app.py"]
EXPOSE 5000
