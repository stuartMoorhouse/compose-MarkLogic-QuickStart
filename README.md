# MarkLogic-DHF_Quickstart

## Usage

Create a .env file, for example:

```
ADMIN=admin
PASSWORD=yourPassword
ML_VERSION=10.0-2-dev-centos
QUICK_START_URL=https://github.com/marklogic/marklogic-data-hub/releases/download/v5.0.3/marklogic-datahub-5.0.3.war
STACK_NAME=testStack
NETWORK_NAME=testNetwork
MARKLOGIC_PORT_MAPPING=17997-18025:7997-8025
QUICK_START_PORT_MAPPING=9080:8080
```

(This will be .gitignored.)

Then start the stack:

``docker-compose up``



