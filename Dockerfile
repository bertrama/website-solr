FROM solr:5.5.0

COPY www.lib /opt/solr/server/solr

ARG SOLR_PORT=8080
ENV SOLR_PORT=${SOLR_PORT}

CMD bin/solr start -f -p ${SOLR_PORT}
