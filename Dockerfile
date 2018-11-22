# Dockerfile
FROM ubuntu:xenial
LABEL maintainer="Elle Stahura"
LABEL maintainer="stah2531@stthomas.edu"
EXPOSE 8080
RUN apt-get update
RUN apt-get install python-pip -y
RUN apt-get install python-dev -y
COPY /workspace/docker-pipeline/site.py /app/site.py
COPY /workspace/docker-pipeline/requirements.txt /app/requirements.txt
WORKDIR /app/
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["site.py"]
