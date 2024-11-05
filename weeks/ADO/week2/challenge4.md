# Challenge 4 - Service Connection Authentication to Azure

[< Previous Challenge](./challenge3.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge5.md)

## Description
Service connections are authenticated connections between Azure Pipelines and external or remote services that you use to execute tasks in a job. These connections are essential when creating a robust CI/CD implementation between Azure DevOps and Azure for deployment of new and management of existing Azure resources.

## Pre-Requisites
1. [ ] Complete Challenge 3 - PRs, Branching and Security

## Success Criteria
1. [ ] Creation of a Service Connection using a Service Principal
2. [ ] Creation of a Service Connection using WIF
3. [ ] Deployment of Test Resource Group to Azure using Azure Service Connection (**GitHub Co-Piot is Your FRIEND!!!!**)
4. [ ] An understanding of the differences between Service Principal and WIF Service Connections

## Resources
- [Service Connection - Service Principal](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops#create-an-azure-resource-manager-service-connection-that-uses-an-existing-service-principal)
- [Service Connection - WIF](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/connect-to-azure?view=azure-devops#create-an-azure-resource-manager-service-connection-that-uses-workload-identity-federation)