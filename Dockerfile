FROM python:2.7

ENV SRC_ROOT /src
ENV PYTHONPATH=lib.linux-x86_64-2.6
ENV LD_LIBRARY_PATH=$PYTHONPATH

RUN mkdir -p $SRC_ROOT
WORKDIR $SRC_ROOT

ADD . /src/

CMD ["sh"]
