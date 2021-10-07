#!/bin/bash

NAME="submission-$(date +%y-%m-%d--%H-%M-%S).tar.gz"
FULL_NAME=$(realpath ../${NAME})
HERE=$(realpath $(pwd))

>&2 echo "Creating submission archive"
>&2 echo "  Input  = $(pwd)"
>&2 echo "         = ${HERE}"
>&2 echo "  Output = ../${NAME}"
>&2 echo "         = ${FULL_NAME}"

tar -czf "${FULL_NAME}" . || { >&2 echo "Warning: tar did not return success code." ; }

SIZE=$(stat -c%s "${FULL_NAME}" )
(( ${SIZE} < 10000000 )) || { >&2 echo "Warning: file is very large (${SIZE} bytes)" ; }