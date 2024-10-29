# Challenge 2 - Connect to Azure

[< Previous Challenge](./challenge1.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge3.md)

## Description
In this challenge you will use the previously installed Azure CLI or Powershell to connect to Azure.

## Success Criteria
1. Successfully connect to Azure using Azure CLI or Powershell


# Steps

## Powershell
```powershell
Connect-AzAccount
```

## CLI
```bash
az login
```

Dont forget to change to the correct subscription for deployment if not prompted to do so:

## Powershell
```powershell
#check which sub you are currently in
Get-AzContext
#change sub by sub id
Set-AzContext -SubscriptionId <SubscriptionId>
#change sub by sub name
Set-AzContext -SubscriptionName <SubscriptionName>
```

## CLI
```bash
#check which sub you are currently in
az account show
#change sub by sub id
az account set --subscription <SubscriptionId>
#change sub by sub name
az account set --subscription <SubscriptionName>
```

# Important

If you use BOTH CLI and Powershell, understand that they create two completely separate contexts.  So logging in with Powershell does not automatically log you in with the CLI and vice versa.  Also if you select a subscription in one, it does not automatically select it in the other.

## Resources
-  Azure Interactive Login - [Powershell](https://learn.microsoft.com/en-us/powershell/azure/authenticate-interactive) or [CLI](https://learn.microsoft.com/en-us/cli/azure/authenticate-azure-cli-interactively)
