# Challenge 4 - Code Review

[< Previous Challenge](./challenge3.md) | **[Home](./introduction.md)**

## Description
Finally, in this challenge you will deploy a simple Bicep file to Azure using either Powershell or the CLI

## Success Criteria
1. Deployed a simple Bicep file to Azure using Powershell or the CLI

# Steps

Please choose either Powershell or the CLI to deploy the Bicep file.

## Powershell
Create a new Resource group:

```powershell
New-AzResourceGroup -Name 'RG-Bicep-Week1' -Location 'uksouth'
```

Then deploy the Bicep file:

```powershell
# you will be asked to provide the location to deploy resources to, use 'uksouth'
New-AzResourceGroupDeployment -ResourceGroupName 'RG-Bicep-Week1' -TemplateFile '.\deploy.bicep' -Verbose
```

To pass in the location parameter at the command line, you can do so like this:

```powershell
New-AzResourceGroupDeployment -ResourceGroupName 'RG-Bicep-Week1' -TemplateFile '.\deploy.bicep' -location 'uksouth' -Verbose
```

## or CLI
Create a new Resource group:

```bash
az group create --name RG-Bicep-Week1 --location uksouth
```

Then deploy the Bicep file:

```bash
# you will be asked to provide the location to deploy resources to, use 'uksouth'
az deployment group create --resource-group RG-Bicep-Week1 --template-file .\deploy.bicep
```

To pass in the location parameter at the command line, you can do so like this:

```bash
az deployment group create --resource-group RG-Bicep-Week1 --template-file .\deploy.bicep --parameters location=uksouth
```

## Resources
- Deploy Bicep file to Azure - [Powershell](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-powershell) or [CLI](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-cli) or [directly from VSCode](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deploy-vscode)
