#!/bin/bash
alias proj="cd /opt/magellance_automate/script_magellan_core/"
#Provisioning_Authentication
screen -S Provisioning_Authentication newman run Provisioning_Authentication.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --insecure --reporter-htmlextra-export reports/Provisioning_Authentication.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Authentication Q2Sprint2"
#Provisioning_Account
screen -S Provisioning_Account newman run Provisioning_Account.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_Account.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_Account Q2Sprint2" --insecure
#Provisioning_Partner 
screen -S Provisioning_Partner screen newman run Provisioning_Partner.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_Partner.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_Partner Q2Sprint2" --insecure
#Provisioning_ThingConfigGroup
screen -S Provisioning_ThingConfigGroup newman run Provisioning_ThingConfigGroup.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_ThingConfigGroup.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_ThingConfigGroup Q2Sprint2" --insecure
#Provisioning_ThingGroup
screen -S Provisioning_ThingGroup newman run Provisioning_ThingGroup.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_ThingGroup.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_ThingGroup Q2Sprint2" --insecure
#Provisioning_Customer 
screen -S Provisioning_Customer screen newman run Provisioning_Customer.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_Customer.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_Customer Q2Sprint2" --insecure
#Provisioning_Route
screen -S Provisioning_Route newman run Provisioning_Route.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_Route.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_Route Q2Sprint2" --insecure 
#Provisioning_PullMessage
screen -S Provisioning_PullMessage newman run Provisioning_PullMessage.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_PullMessage.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_PullMessage Q2Sprint2" --insecure 
#Provisioning_Purchase 
screen -S Provisioning_Purchase screen newman run Provisioning_Purchase.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_Purchase.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_Purchase Q2Sprint2" --insecure
#Provisioning_SystemUser
screen -S Provisioning_SystemUser screen newman run Provisioning_SystemUser.postman_collection.json -e env_and_globals/env_iot_magellanCoreApi.postman_environment.json -r htmlextra --reporter-htmlextra-export reports/Provisioning_SystemUser.html --reporter-htmlextra-browserTitle "Magellance Automate Test" --reporter-htmlextra-Title "Provisioning_SystemUser Q2Sprint2" --insecure
echo '==== All Complete!! ===='