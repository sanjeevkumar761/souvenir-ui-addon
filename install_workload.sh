 cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/LANDSCAPE/DEV-WEEU-SAP01-INFRASTRUCTURE

    ${DEPLOYMENT_REPO_PATH}deploy/scripts/install_workloadzone.sh --parameterfile DEV-WEEU-SAP01-INFRASTRUCTURE.json \
    --deployer_environment MGMT
    --subscription bf44c08e-5fa3-4f73-987c-3a51f2d22b00 \
    --spn_id b04c98e9-e18c-4082-b1bc-a2f3f745142f \
    --spn_secret FRcHPj8Z.IoKy4-qRdM-yMmIiGdTC0Kr-G \
    --tenant_id 72f988bf-86f1-41af-91ab-2d7cd011db47 \
    --auto-approve






#Previous version of commands is below
#cd ~/Azure_SAP_Automated_Deployment/WORKSPACES/DEPLOYMENT-ORCHESTRATION
#cd LANDSCAPE
#cd DEV-NOEU-SAP01-INFRASTRUCTURE
#${DEPLOYMENT_REPO_PATH}deploy/scripts/set_secrets.sh -e DEV -r northeurope -v MGMTNOEUDEP00userE25 -c b04c98e9-e18c-4082-b1bc-a2f3f745142f -t 72f988bf-86f1-41af-91ab-2d7cd011db47 -s FRcHPj8Z.IoKy4-qRdM-yMmIiGdTC0Kr-G
#${DEPLOYMENT_REPO_PATH}deploy/scripts/install_workloadzone.sh -p DEV-NOEU-SAP01-INFRASTRUCTURE.json