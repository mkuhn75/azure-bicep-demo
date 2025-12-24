targetScope = 'subscription'

@description('Name of the Resource Group')
param rgName string = 'Test GitHub Actions MKU'

@description('Azure region for the Resource Group')
param location string = 'switzerlandnorth'

@description('Environment (prod, test, dev)')
param environment string = 'test'

@description('Cost Center / Billing reference')
param costCenter string = 'IT'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: rgName
  location: location
  tags: {
    Environment: environment
    CostCenter: costCenter
    ManagedBy: 'Bicep'
  }
}
