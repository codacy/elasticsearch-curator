FROM python:3.7-alpine3.7

RUN pip3 install elasticsearch-curator==5.8.1

USER nobody:nobody
ENTRYPOINT ["/usr/local/bin/curator"]
