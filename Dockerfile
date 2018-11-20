# Dockerfile
FROM ubuntu:xenial
LABEL maintainer="Elle Stahura
LABEL maintainer="stah2531@stthomas.edu"
EXPOSE 8080
RUN apt-get python-pip -y
RUN apt-get python-dev -y
COPY site.py /app/
COPY requirements.txt /app/
WORKDIR /app/
pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["site.py"]
