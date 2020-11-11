FROM jupyter/pyspark-notebook

ARG NESSIE_ICEBERG_VERSION=0.2.1

RUN pip install pynessie==${NESSIE_ICEBERG_VERSION}

USER root

RUN wget \
    https://repo.maven.apache.org/maven2/org/projectnessie/nessie-iceberg-spark3/${NESSIE_ICEBERG_VERSION}/nessie-iceberg-spark3-${NESSIE_ICEBERG_VERSION}.jar \
    -P /usr/local/spark/jars/

USER $NB_UID