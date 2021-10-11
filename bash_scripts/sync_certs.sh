#! /usr/bin/sh

DST_WORK_DIR='temp_ssl_backup'
TODAY=$(date +%Y-%m-%d)

SRC_CERT_HOSTNAME='10.10.10.11'
SRC_CERT_HOSTNAME_PATH='/home/redwan/fake_ssl/test_certs_import/'
USER='redwan'
DST_CERT_DIR=${DST_WORK_DIR}_${TODAY}

mkdir -p /tmp/${DST_CERT_DIR}


rsync -az ${USER}@${SRC_CERT_HOSTNAME}:${SRC_CERT_HOSTNAME_PATH} ${DST_CERT_DIR}

