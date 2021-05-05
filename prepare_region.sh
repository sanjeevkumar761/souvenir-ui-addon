#Copy WORKSPACES
cd ~/Azure_SAP_Automated_Deployment
mkdir -p WORKSPACES/DEPLOYER
cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES/DEPLOYER/MGMT-WEEU-DEP00-INFRASTRUCTURE WORKSPACES/DEPLOYER/. -r

mkdir -p WORKSPACES/LIBRARY
cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES/LIBRARY/MGMT-WEEU-SAP_LIBRARY WORKSPACES/LIBRARY/. -r

mkdir -p WORKSPACES/LANDSCAPE
cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES/LANDSCAPE/DEV-WEEU-SAP01-INFRASTRUCTURE WORKSPACES/LANDSCAPE/. -r

mkdir -p WORKSPACES/SYSTEM
cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES/SYSTEM/DEV-WEEU-SAP01-X00 WORKSPACES/SYSTEM/. -r

cd ~/Azure_SAP_Automated_Deployment/WORKSPACES

$DEPLOYMENT_REPO_PATH/scripts/prepare_region.sh
        --deployer_parameter_file DEPLOYER/MGMT-WEEU-DEP00-INFRASTRUCTURE/MGMT-WEEU-DEP00-INFRASTRUCTURE.json \
        --library_parameter_file LIBRARY/MGMT-WEEU-SAP_LIBRARY/MGMT-WEEU-SAP_LIBRARY.json
        --subscription bf44c08e-5fa3-4f73-987c-3a51f2d22b00 \
        --spn_id b04c98e9-e18c-4082-b1bc-a2f3f745142f \
        --spn_secret FRcHPj8Z.IoKy4-qRdM-yMmIiGdTC0Kr-G \
        --tenant_id 72f988bf-86f1-41af-91ab-2d7cd011db47 \
        --auto-approve



#Previous commands are below
#cd ~/Azure_SAP_Automated_Deployment
#cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES WORKSPACES/ -r


#parameterize for North Europe / West Europe / Region specific setup
#Prepare landscape
#cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
#cd LANDSCAPE
#cp DEV-WEEU-SAP01-INFRASTRUCTURE/ DEV-NOEU-SAP01-INFRASTRUCTURE/ -r
#cd DEV-NOEU-SAP01-INFRASTRUCTURE
#cp ~/souvenir-ui-addon/config_files/DEV-NOEU-SAP01-INFRASTRUCTURE.json .

#Prepare deployer
#cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
#cd DEPLOYER
#cp MGMT-WEEU-DEP00-INFRASTRUCTURE/ MGMT-NOEU-DEP00-INFRASTRUCTURE/ -r
#cd MGMT-NOEU-DEP00-INFRASTRUCTURE
#cp ~/souvenir-ui-addon/config_files/MGMT-NOEU-DEP00-INFRASTRUCTURE.json .

#Prepare library
#rm ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION/LIBRARY/MGMT-NOEU-SAP_LIBRARY/MGMT-NOEU-SAP_LIBRARY.json
#cp ~/souvenir-ui-addon/config_files/MGMT-NOEU-SAP_LIBRARY.json ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION/LIBRARY/MGMT-NOEU-SAP_LIBRARY/

#Prepare region
#cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
#${DEPLOYMENT_REPO_PATH}deploy/scripts/prepare_region.sh -d DEPLOYER/MGMT-NOEU-DEP00-INFRASTRUCTURE/MGMT-NOEU-DEP00-INFRASTRUCTURE.json -l LIBRARY/MGMT-NOEU-SAP_LIBRARY/MGMT-NOEU-SAP_LIBRARY.json -f
