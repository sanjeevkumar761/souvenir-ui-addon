cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/SYSTEM/DEV-WEEU-SAP01-X00

${DEPLOYMENT_REPO_PATH}deploy/scripts/installer.sh --parameterfile DEV-WEEU-SAP01-X00.json --type sap_system --auto-approve



#Previous version of commands is below
#cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
#cd SYSTEM
#cp DEV-WEEU-SAP01-X00/ DEV-NOEU-SAP01-X00/ -r
#cd DEV-NOEU-SAP01-X00
#cp ~/souvenir-ui-addon/config_files/DEV-NOEU-SAP01-X00.json .
#${DEPLOYMENT_REPO_PATH}deploy/scripts/installer.sh -p DEV-NOEU-SAP01-X00.json -t sap_system