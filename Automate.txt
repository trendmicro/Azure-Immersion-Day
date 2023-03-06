@ECHO OFF
SET /P Action=Type A to Deploy Lab Envs OR D to Delete Envs OR L to List ALL Subs:
IF %Action%== L (az account list --output table)
SET /P UserInput1=Please Enter First ResourceGroup Number Example For ResourceGroup001 Enter 1:
SET /P UserInput2=Please Enter Final ResourceGroup Number:

ECHO %UserInput1%
ECHO %UserInput2%
SET "extension1=az group create --location eastus --name "
SET "extension2=ResourceGroup00"
SET "extension3=ResourceGroup0"
SET "extension4=az deployment group create --name "
SET "extension5= --resource-group "
SET "extension6= --template-file azuredeploy.json"
SET "extension7= az group delete --name "
SET "Command=az login --tenant trendmicroimmersionazure.onmicrosoft.com"

IF %Action%== A (
for /l %%x in (%UserInput1%, 1, %UserInput2%) do (
   
   IF %%x LEQ 9 (az account set --subscription Subscription00%%x
                 az group create --location eastus --name ResourceGroup00%%x
                 az deployment group create --name ResourceGroup00%%x --resource-group ResourceGroup00%%x --template-file azuredeploy.json)
   IF %%x GEQ 10 (az account set --subscription Subscription0%%x
                  az group create --location eastus --name ResourceGroup0%%x
                  az deployment group create --name ResourceGroup0%%x --resource-group ResourceGroup0%%x --template-file azuredeploy.json)
 
)
)

IF %Action%== D (
for /l %%x in (%UserInput1%, 1, %UserInput2%) do (
IF %%x LEQ 9 (
az account set --subscription Subscription00%%x
az group delete --name ResourceGroup00%%x)


IF %%x GEQ 10 (
az account set --subscription Subscription0%%x
az group delete --name ResourceGroup0%%x)
)
)
Pause