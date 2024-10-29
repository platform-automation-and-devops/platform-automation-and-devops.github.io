//This bicep file deploys a Virtual Network and a Subnet

/*
**************
* PARAMETERS *
**************
*/
@description('Required: The location where the resources will be deployed')
param location string

@description('Optional: The name of the Virtual Network')
param vnetName string = 'myVnet'

@description('Optional: The array of address prefixes for the Virtual Network')
param vnetPrefixes array = [
  '10.0.0.0/24'
  '192.168.200.0/24'
]

/*
*************
* VARIABLES *
*************
*/

//the name of the first subnet - note variables do not have decorators like @description
var subnetName1 = 'mySubnet1'

//The address of the first subnet - accessed from the first index (0) in the vnetPrefixes array
var subnetPrefix1 = vnetPrefixes[0]

//The name of the second subnet
var subnetName2 = 'mySubnet2'

//The address of the second subnet - accessed from the second index (1) in the vnetPrefixes array then using the
//cidrSubnet function to create a subnet with a prefix length of 26
var subnetPrefix2 = cidrSubnet(vnetPrefixes[1],26,0)

/*
*************
* RESOURCES *
*************
*/

//Resource - Virtual network
resource vnet 'Microsoft.Network/virtualNetworks@2024-01-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: vnetPrefixes
    }
    subnets: [
      {
        name: subnetName1
        properties: {
          addressPrefix: subnetPrefix1
        }
      }
      {
        name: subnetName2
        properties: {
          addressPrefix: subnetPrefix2
        }
      }
    ]
  }
}

@description('The ID of the Virtual Network')
output vnetId string = vnet.id
