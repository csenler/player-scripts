#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 {archive name with extension}" >&2
  exit 1
fi

echo "Running archive extractor"

ARCHIVE_NAME=$1
echo "archive name: ${ARCHIVE_NAME}"

if [ -f "${ARCHIVE_NAME}" ]; then
    echo "${ARCHIVE_NAME} exists, extracting..."
    tar -xvf ${ARCHIVE_NAME}
    echo "extaction should be finished."
else
    echo "${ARCHIVE_NAME} does not exist!"
fi
