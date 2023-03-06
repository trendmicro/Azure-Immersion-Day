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
### Deploy environment automatically for Windows
You can deploy, delete any number of environments trough a windows Batch script. New features will be added in the future.
0. Make sure you are logged in Azure Portal.
1. Open Windows CMD inside of the folder where Automate.bat is located.
2. Execute the script.
```commandline
automate
```
3. Type A to start deploying Resource groups, or D to Delete them. Type L to list all subscriptions and get their IDs and status.
4. If you choose to Deploy/Delete, you must specify the number of Resource groups to act on.
5. Enter the number of the first Resource group in the format of a whole number. eg. If you wish to deploy from Resource group 009 enter number 9.
6. Enter the number of the last Resource group in the format of a whole number. eg. If you wish to deploy from Resource group 060 enter number 60.
