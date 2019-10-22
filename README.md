# MarkLogic-DHF_Quickstart

## Usage

Create a .env file, for example:

```
admin=admin
password=yourPasswrd
mlVersion=10.0-2-dev-centos
quickStartURL=https://github.com/marklogic/marklogic-data-hub/releases/download/v5.0.3/marklogic-datahub-5.0.3.war
stackName=yourStack
markLogicPortMapping=27997-28025
quickStartPortMapping=9080
```

(This will be .gitignored.)

Then start the stack:

``docker-compose up``



