#!/usr/bin/env bash


cat >DHF-config/gradle-docker.properties <<EOF
mlUsername=$MARKLOGIC_ADMIN_USERNAME
mlPassword=$MARKLOGIC_ADMIN_PASSWORD
mlHost=$STACK_NAME.dhf.local
EOF

exec "$@"