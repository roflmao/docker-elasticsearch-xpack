FROM quay.io/pires/docker-elasticsearch-kubernetes:6.4.0
ENV ES_TMPDIR="/tmp"

RUN NODE_NAME=local /elasticsearch/bin/elasticsearch-plugin install x-pack --batch && \
    rm -rf /elasticsearch/plugins/x-pack/x-pack-ml

