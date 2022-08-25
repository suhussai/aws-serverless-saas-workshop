#!/bin/bash
##
## This script aims to automatically deploy the labs
## using the completed labs found in the Solutions folder.
##

echo "$(date) ################ Running pre-req script... ################" | tee -a /tmp/timing-output.log
cd ../Cloud9Setup/
# ./increase-disk-size.sh
# ./pre-requisites.sh
cd ../scripts/
echo "$(date) ################ Done running pre-req script... ################" | tee -a /tmp/timing-output.log

echo "$(date) ################ Running labs... ################" | tee -a /tmp/timing-output.log

### Note that deploying lab1 is not a requirement ####
echo "$(date) ################ Running lab1... ################" | tee -a /tmp/timing-output.log
cd ../Solution/Lab1/scripts
echo "$(date) ################ First execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s -c --stack-name serverless-saas-workshop-lab1
cd ../../../scripts/
echo "$(date) ################ Done running lab1. ################" | tee -a /tmp/timing-output.log
######################################################

echo "$(date) ################ Running lab2... ################" | tee -a /tmp/timing-output.log

cd ../Solution/Lab2/scripts
echo "$(date) ################ First execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s -c --email syeduh+serverlesslab@amazon.com
echo "$(date) ################ Second execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s
cd ../../../scripts/

echo "$(date) ################ Done running lab2. ################" | tee -a /tmp/timing-output.log

read -p "Press enter to continue"

echo "$(date) ################ Running lab3... ################" | tee -a /tmp/timing-output.log

cd ../Solution/Lab3/scripts
echo "$(date) ################ First execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s -c
echo "$(date) ################ Second execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s
cd ../../../scripts/

echo "$(date) ################ Done running lab3. ################" | tee -a /tmp/timing-output.log

read -p "Press enter to continue"

echo "$(date) ################ Running lab4... ################" | tee -a /tmp/timing-output.log

cd ../Solution/Lab4/scripts
echo "$(date) ################ First execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s
cd ../../../scripts/

echo "$(date) ################ Done running lab4. ################" | tee -a /tmp/timing-output.log

read -p "Press enter to continue"

echo "$(date) ################ Running lab5... ################" | tee -a /tmp/timing-output.log

cd ../Solution/Lab5/scripts/
echo "$(date) ################ First execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s -c
echo "$(date) ################ Second execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh -s
cd ../../../scripts/

echo "$(date) ################ Done running lab5. ################" | tee -a /tmp/timing-output.log

read -p "Press enter to continue"

echo "$(date) ################ Running lab6... ################" | tee -a /tmp/timing-output.log

cd ../Solution/Lab6/scripts/
echo "$(date) ################ First execution of deployment script... ################" | tee -a /tmp/timing-output.log
./deployment.sh
cd ../../../scripts/

echo "$(date) ################ Done running lab6. ################" | tee -a /tmp/timing-output.log
