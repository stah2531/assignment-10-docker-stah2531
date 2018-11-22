# Dockerfile
FROM ubuntu:xenial
LABEL maintainer="Elle Stahura"
LABEL maintainer="stah2531@stthomas.edu"
EXPOSE 8080
RUN apt-get update
RUN apt-get install python-pip -y
RUN apt-get install python-dev -y
WORKDIR /workspace/docker-pipeline/
COPY app/ app/
WORKDIR app/
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["site.py"]
