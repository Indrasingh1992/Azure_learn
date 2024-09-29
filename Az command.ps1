az login --tenant <Tenant-ID>       # login with tenant ID
az login --tenant 3ab6d4fa-f3ea-4f36-b819-3749b9eebbac



az account show   # show the account details



az vm list --output table      # show all vm in Azure



az vm start --resource-group VIRUAL_MACHINES --name MyLowCostVM      #Start Vm in Azure
az vm stop --resource-group VIRUAL_MACHINES --name MyLowCostVM 	  #stop Vm in Azure	


az vm deallocate --resource-group VIRUAL_MACHINES --name MyLowCostVM   #Deallocate Vm in Azure





az vm get-instance-view --resource-group VIRUAL_MACHINES --name MyLowCostVM --output table     # get instance of the vm
az vm get-instance-view --resource-group VIRUAL_MACHINES --name MyLowCostVM --output table   



az vm list-ip-addresses --resource-group VIRUAL_MACHINES --name MyLowCostVM --query "[].virtualMachine.network.publicIpAddresses[*].ipAddress" --output tsv


az vm list-ip-addresses --resource-group VIRUAL_MACHINES --name MyLowCostVM --output table
  






