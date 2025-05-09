Line |
 148 |              Set-AzPolicyDefinitionRestMethod -Definition $entry -ApiV …
     |              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     | Definition error 400 -- allowed-az-external-services --{   "error": {   
     | "code": "InvalidPolicyParameters",     "message": "A function or
     | parameter in policy 'allowed-az-external-services' could not be
     | validated. If using template functions, try following the tips in:
     | https://aka.ms/policy-avoiding-template-failures. The inner exception
     | 'The language expression '[array(field('type'))]' evaluation result type
     | 'Array' is invalid. The supported types are 'String, Integer, Float,
     | Boolean'.'."   } }