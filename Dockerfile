FROM debian:stable

RUN apt-get update && apt-get install -y \
    texlive-full \
    python3-pygments python-is-python3 \
    python3-pip pdf2svg git \
    && \
  apt-get --purge remove -y .\*-doc$ && \
  apt-get clean -y

RUN pip install pretextbook

