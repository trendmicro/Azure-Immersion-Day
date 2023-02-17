# Azure-Immersion-Workshop

### Azure-Immersion-Workshop Resource Architecture

![image](https://github.com/trendmicro/Azure-Immersion-Day/blob/main/readme/Azure-Immersion-Workshop%20Resource%20Architecture.png)

### Deploy the environment by Azure Resource Management (ARM)
1. Please install Azure CLI by the website
```html
https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
```
2. Use the command to login
```commandline
az login --tenant trendmicroimmersionazure.onmicrosoft.com
```
3. Create a resource group
```commandline
az group create --location eastus --name AzureImmersionWorkshop
```
4. Deploy the template
```commandline
az deployment group create --name AzureImmersionWorkshop --resource-group AzureImmersionWorkshop --template-file azuredeploy.json
```
5. Remove the resource group
```commandline
az group delete --name AzureImmersionWorkshop
```
