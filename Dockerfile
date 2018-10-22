FROM python:3.6-slim
LABEL maintainer="neo1691"

ARG AIRFLOW_VERSION=1.10.0
ARG AIRFLOW_HOME=/usr/local/airflow
ENV AIRFLOW_GPL_UNIDECODE yes

RUN apt-get update -yqq \
    && apt-get upgrade -yqq \
    && apt-get install -yqq --no-install-recommends \
    build-essential \
    python3-pip \
    procps 

RUN pip install --upgrade pip
RUN pip install apache-airflow==$AIRFLOW_VERSION

COPY scripts/entrypoint.sh /entrypoint.sh

EXPOSE 8080
ENTRYPOINT [ "/entrypoint.sh" ]
CMD ["webserver"]