Invoke-AzRestMethod: /Users/alanharo/Documents/git/enterprise-azure-policy-as-code/Scripts/Helpers/Search-AzGraphAllItems.ps1:97:25
Line |
  97 |              $response = Invoke-AzRestMethod -Method POST `
     |                          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     | Error while copying content to a stream.
Write-Error: /Users/alanharo/Documents/git/enterprise-azure-policy-as-code/Scripts/Helpers/Get-AzPolicyOrSetDefinitions.ps1:39:24
Line |
  39 |  … Resources = Search-AzGraphAllItems -Query $query -ProgressItemName $p …
     |                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     | Search-AzGraph REST error for ''  -- 