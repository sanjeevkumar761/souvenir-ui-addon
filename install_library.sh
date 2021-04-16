cd ~/Azure_SAP_Automated_Deployment
cp sap-hana/documentation/SAP_Automation_on_Azure/Process_Documentation/WORKSPACES WORKSPACES/ -r
cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION

#parameterize for North Europe / West Europe / Region specific setup
cd LANDSCAPE
cp DEV-WEEU-SAP01-INFRASTRUCTURE/ DEV-NOEU-SAP01-INFRASTRUCTURE/ -r
cd DEV-NOEU-SAP01-INFRASTRUCTURE
cp ./config_files/DEV-NOEU-SAP01-INFRASTRUCTURE.json .

cd DEPLOYER
cp MGMT-WEEU-DEP00-INFRASTRUCTURE/ MGMT-NOEU-DEP00-INFRASTRUCTURE/ -r
cd MGMT-NOEU-DEP00-INFRASTRUCTURE
cp ./config_files/MGMT-NOEU-DEP00-INFRASTRUCTURE.json .

rm ~/Azure_SAP_Automated_Deployment/LIBRARY/MGMT-NOEU-SAP_LIBRARY/MGMT-NOEU-SAP_LIBRARY.json
cp ./config_files/MGMT-NOEU-SAP_LIBRARY.json ~/Azure_SAP_Automated_Deployment/LIBRARY/MGMT-NOEU-SAP_LIBRARY/

cd ~/Azure_SAP_Automated_Deployment/LIBRARY/MGMT-NOEU-SAP_LIBRARY/
${DEPLOYMENT_REPO_PATH}deploy/scripts/install_library.sh -p MGMT-NOEU-SAP_LIBRARY.json -d ../../DEPLOYER/MGMT-NOEU-DEP00-INFRASTRUCTURE