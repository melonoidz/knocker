FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

RUN apt-get install -y vim less
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN python -m pip install jupyterlab
RUN python -m pip install numpy
RUN python -m pip install pandas
RUN python -m pip install matplotlib
RUN python -m pip install scikit-learn
RUN python -m pip install networkx
RUN python -m pip install PuLP
RUN python -m pip install ortoolpy
RUN python -m pip install opencv-python
# RUN python -m pip install dlib

# RUN python -m pip install mecab-python3