FROM python:3.7-alpine
LABEL maintainer="Strubbl <Strubbl-Dockerfile@linux4tw.de>"
ADD imdb_backup.py /
RUN pip install requests beautifulsoup4 unidecode && \
    chmod +x /imdb_backup.py && \
    mkdir /data
WORKDIR /data
VOLUME ["/data"]
CMD ["/data/imdb_backup.py", "-n"]
