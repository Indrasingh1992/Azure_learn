@echo off
SET tenantId=3ab6d4fa-f3ea-4f36-b819-3749b9eebbac
SET subscriptionId=fc0d0bbc-c1a7-4198-ae0e-c2c602f9ce46
SET resourceGroupName=VIRUAL_MACHINES
SET vmName=MyLowCostVM

REM Log in to Azure with the tenant ID
powershell -Command "az login --tenant %tenantId% --output none"

REM Set the subscription
powershell -Command "az account set --subscription %subscriptionId% --output none"


REM Stop the VM
powershell -Command "az vm stop --resource-group %resourceGroupName% --name %vmName% --output table"



REM Deallocate the VM
powershell -Command "az vm deallocate --resource-group %resourceGroupName% --name %vmName% --output table"



@echo VM start command executed!
cmd