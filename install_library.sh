cd ~/Azure_SAP_Automated_Deployment
cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES WORKSPACES/ -r


#parameterize for North Europe / West Europe / Region specific setup
cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
cd LANDSCAPE
cp DEV-WEEU-SAP01-INFRASTRUCTURE/ DEV-NOEU-SAP01-INFRASTRUCTURE/ -r
cd DEV-NOEU-SAP01-INFRASTRUCTURE
cp ~/souvenir-ui-addon/config_files/DEV-NOEU-SAP01-INFRASTRUCTURE.json .

cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
cd DEPLOYER
cp MGMT-WEEU-DEP00-INFRASTRUCTURE/ MGMT-NOEU-DEP00-INFRASTRUCTURE/ -r
cd MGMT-NOEU-DEP00-INFRASTRUCTURE
cp ~/souvenir-ui-addon/config_files/MGMT-NOEU-DEP00-INFRASTRUCTURE.json .

#Prepare region
rm ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION/LIBRARY/MGMT-NOEU-SAP_LIBRARY/MGMT-NOEU-SAP_LIBRARY.json
cp ~/souvenir-ui-addon/config_files/MGMT-NOEU-SAP_LIBRARY.json ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION/LIBRARY/MGMT-NOEU-SAP_LIBRARY/

${DEPLOYMENT_REPO_PATH}deploy/scripts/prepare_region.sh -d DEPLOYER/MGMT-NOEU-DEP00-INFRASTRUCTURE/MGMT-NOEU-DEP00-INFRASTRUCTURE.json -l LIBRARY/MGMT-NOEU-SAP_LIBRARY/MGMT-NOEU-SAP_LIBRARY.json -f


#cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION/LIBRARY/MGMT-NOEU-SAP_LIBRARY/
#${DEPLOYMENT_REPO_PATH}deploy/scripts/install_library.sh -p MGMT-NOEU-SAP_LIBRARY.json -d ../../DEPLOYER/MGMT-NOEU-DEP00-INFRASTRUCTURE