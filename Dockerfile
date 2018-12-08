# Dockerfile
FROM ubuntu:xenial
LABEL maintainer="Elle Stahura"
LABEL email="stah2531@stthomas.edu"
EXPOSE 80
RUN apt-get update
RUN apt-get install python-pip -y && apt-get install python-dev -y
COPY app/ app/
WORKDIR app/
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["site.py"]
