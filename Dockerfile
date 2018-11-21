# Dockerfile
FROM ubuntu:xenial
LABEL maintainer="Elle Stahura"
LABEL maintainer="stah2531@stthomas.edu"
EXPOSE 8080
RUN apt-get install software-properties-common
RUN apt-add-repository universe
RUN apt-get update
RUN apt-get install python-pip
RUN apt-get install python-dev
COPY site.py /app/
COPY requirements.txt /app/
WORKDIR /app/
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["site.py"]
