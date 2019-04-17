FROM google/cloud-sdk:alpine

# Default Environment Variables

ENV MYSQL_HOST "127.0.0.1"
ENV MYSQL_PORT "3306"
ENV MYSQL_USER "root"

ENV BACKUP_TO "gcs"

ENV S3_PREFIX ""
ENV GCS_PREFIX ""

ENV BZIP2_LEVEL "9"

RUN apk update \
  # Install Dependencies
  && apk --no-cache add \
  mariadb-client

COPY entrypoint.sh /opt/entrypoint.sh

CMD sh /opt/entrypoint.sh
