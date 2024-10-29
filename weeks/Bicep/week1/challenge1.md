# Challenge 1 - Environment Setup

**[Home](./introduction.md)** | [Next Challenge >](./challenge2.md)

## Description
In this challenge we will be learning about the connecting to Azure, how Bicep works within VSCode and how to deploy a Bicep file to Azure.

## Success Criteria
1. Configure Bicep in your environment 
1. Install the Bicep extension in VSCode

# Steps

## If using Powershell
1. Azure Powershell 7+ - [How to install](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
1. Bicep needs to be installed to work with Powershell
1. Check to see if it is installed by running `bicep --version`
1. If it is not installed, you can install it by doing ONE of the following:
    1. Download and run the [latest Windows installer](https://github.com/Azure/bicep/releases/latest/download/bicep-setup-win-x64.exe) (runs as user scope)
    1. OR use a package manager like Winget (`winget install -e --id Microsoft.Bicep`) or Chocolatly (`choco install bicep`)
1. Check it is installed by running `bicep --version`

## If using CLI
1. Install the Azure CLI, this already includes Bicep - [How to install](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
1. Bicep is included in version 2.20.0 and later.  If you have an older version, you will need to update it.  You can check your CLI version by running `az --version` and upgrade it by running `az upgrade`
1. Check the version of Bicep installed by running `az bicep version` in the CLI
1. If necessary update Bicep by running `az bicep upgrade`

## If using Visual Studio Code (VSCode)
1. Install VSCode if not already installed - [How to install](https://code.visualstudio.com/)
1. Install the Bicep extension - [How to install](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install#visual-studio-code-and-bicep-extension)
1. Configure the Bicep Extension (defaults are usually fine) - [More info](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install#visual-studio-code-and-bicep-extension)

**Note**: You can also do this in the full version of Visual Studio, but we will be using VSCode for this.  If you would like more information, please take a look [here](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install#visual-studio-and-bicep-extension)

## Note on Additional Modules
Whether using the CLI or Powershell version, not all modules are available by default.  If you need to install additional modules, you can do so by running `Install-Module -Name <ModuleName>`

An example of this would be the Azure ImageBuilder module.  You can install it by running `Install-Module -Name Az.ImageBuilder`
