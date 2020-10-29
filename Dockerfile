FROM python:3.9-alpine


## standard installation failing due to https://github.com/elastic/curator/issues/1560
#RUN pip3 -v install elasticsearch-curator==5.8.1

RUN python -m pip install urllib3==1.24.3 boto3 'botocore<1.19' --use-feature=2020-resolver
RUN python -m pip install elasticsearch-curator

USER nobody:nobody
ENTRYPOINT ["/usr/local/bin/curator"]
