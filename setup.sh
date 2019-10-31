#!/usr/bin/env bash

#### get variables from user
echo ""
echo ""
echo "Welcome to the MarkLogic/ DHF/ QuickStart Docker application"
echo ""
echo "Which MarkLogic version would you like, out of 9.0-9 (CentOS), 9.0-10 (CentOS and Red Hat UBI), 10.0-1 (CentOS and Red Hat UBI), and 10.0-2 (CentOS and Red Hat UBI)?"
echo " > Please enter '1' (for 9.0-9), '2', (for 9.0-10), '3' (for 10.0-1), or '4' (for 10.0-2):"
read version
echo ""

echo "Would you like that on CentOS or Red Hat UBI?"
echo " > Please enter 'c' (for CentOS) or 'r' (for Red Hat UBI):"
read os
echo ""

echo " > Please enter the name of the Docker application you would like to create:"
read stackName
echo ""

echo "This application requires port mapping from the MarkLogic instance container to the local machine."
echo " > Please select a range of 28 port numbers (e.g., '27997-28025') or press return to map directly (so port 8000 in the container maps to localhost:8000):"
read markLogicPortMapping
echo ""

echo " > Please choose a port mapping for the QuickStart application. Press return to map directly to the default QuickStart port (9000):"
read quickStartPortMapping
echo ""

echo " > Please select a name of the Admin account in the MarkLogic instance or press return to choose 'admin':"
read admin
echo ""

echo " > Please select a password for the Admin account in the MarkLogic instance:"
read password
echo ""

echo "You have chosen to create a stack called '${stackName}', with a MarkLogic '${version}' instance on '${os}'."
echo "The MarkLogic port mapping is '${markLogicPortMapping}' and the QuickStart port mapping is '${quickStartPortMapping}'"
echo "You've set the MarkLogic admin username to '${admin}' and the password to '${password}'."

###########


########### creeate .env and gradle-docker.properties 








############


########### create stack




###########




