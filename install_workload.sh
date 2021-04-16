cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
cd LANDSCAPE
cd DEV-NOEU-SAP01-INFRASTRUCTURE
rm ~/.sap_deployment_automation/DEVnortheurope
${DEPLOYMENT_REPO_PATH}deploy/scripts/install_workloadzone.sh -p DEV-NOEU-SAP01-INFRASTRUCTURE.json