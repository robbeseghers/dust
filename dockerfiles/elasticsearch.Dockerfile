ARG ES_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}
RUN bin/elasticsearch-plugin install --batch analysis-icu
RUN chown -R 1000:1000 /usr/share/elasticsearch
USER 1000
