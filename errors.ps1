Number of Policy Assignment files = 18
Write-Error: /Users/alanharo/Documents/git/enterprise-azure-policy-as-code/Scripts/Helpers/Build-AssignmentDefinitionEntry.ps1:29:25
Line |
  29 |              $policyId = Confirm-PolicyDefinitionUsedExists `
     |                          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     |     Policy name 'allowed-az-external-services' not found in custom or built-in Policies.
InvalidOperation: /Users/alanharo/Documents/git/enterprise-azure-policy-as-code/Scripts/Helpers/Build-AssignmentDefinitionEntry.ps1:82:13
Line |
  82 |              $normalizedEntry.displayName = $DefinitionEntry.displayNa …
     |              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     | The property 'displayName' cannot be found on this object. Verify that the property exists and can be set.
InvalidOperation: /Users/alanharo/Documents/git/enterprise-azure-policy-as-code/Scripts/Helpers/Build-AssignmentDefinitionEntry.ps1:116:13
Line |
 116 |              $normalizedEntry.assignment = @{
     |              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     | The property 'assignment' cannot be found on this object. Verify that the property exists and can be set.
Write-Error: /Users/alanharo/Documents/git/enterprise-azure-policy-as-code/Scripts/Deploy/Build-DeploymentPlans.ps1:334:9
Line |
 334 |          Build-AssignmentPlan `
     |          ~~~~~~~~~~~~~~~~~~~~~~
     | Assignment definitions content errors