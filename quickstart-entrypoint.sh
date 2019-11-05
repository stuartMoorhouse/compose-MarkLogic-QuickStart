#!/usr/bin/env bash


cat >DHF-config/gradle-docker.properties <<EOF
mlUsername=$MARKLOGIC_ADMIN_USERNAME
mlPassword=$MARKLOGIC_ADMIN_PASSWORD
mlHost=$STACK_NAME.dhf.local
EOF

cat >DHF-config/build.gradle <<EOF
plugins {
    id 'net.saliman.properties' version '1.4.6'

    id 'com.marklogic.ml-data-hub' version '$DHF_VERSION'
  }
EOF



exec "$@"