FROM python:2.7

ENV SRC_ROOT /src

RUN mkdir -p $SRC_ROOT
WORKDIR $SRC_ROOT

ADD . /src/

CMD ["/src/test.sh"]
