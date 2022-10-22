#!/bin/bash
# -- Export configuration
# export ENDPOINT=s3.domain.tld
# export ACCESS_KEY=0123456789ABCDEF
# export SECRET_KEY=0123456789ABCDEF

# -- Usage
# ./bucket-test.sh [BUCKET] [FILE]

BUCKET=$1
FILE=$2

ENDPOINT=$ENDPOINT
ACCESS_KEY=$ACCESS_KEY
SECRET_KEY=$SECRET_KEY

RESOURCE="/${BUCKET}/${FILE}"
CONTENT_TYPE="application/octet-stream"
DATE=`date -R`
_SIGNATURE="PUT\n\n${CONTENT_TYPE}\n${DATE}\n${RESOURCE}"
SIGNATURE=`echo -en ${_SIGNATURE} | openssl sha1 -hmac ${SECRET_KEY} -binary | base64`

curl -v -X PUT -T "${FILE}" \
          -H "Host: $ENDPOINT" \
          -H "Date: ${DATE}" \
          -H "Content-Type: ${CONTENT_TYPE}" \
          -H "Authorization: AWS ${ACCESS_KEY}:${SIGNATURE}" \
          https://$ENDPOINT${RESOURCE}
