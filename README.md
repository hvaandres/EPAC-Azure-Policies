# Enterprise Policy as Code (EPAC) in Azure

## Project Overview
This project focuses on integrating **Enterprise Policy as Code (EPAC)** with Azure to manage and automate policy assignments, policy definitions, and policy set definitions. The primary goal is to ensure the environment remains compliant with the latest governance, security, and operational standards by updating policies to the latest versions. It also provides a framework for manually applying policy definitions when necessary.

## What is EPAC?
**Enterprise Policy as Code (EPAC)** is a methodology that allows organizations to define, manage, and enforce Azure governance policies programmatically. It transforms Azure Policy management into code, enabling policy versioning, automated deployment, and continuous compliance.

## Why is EPAC Essential?
- **Consistency and Automation:** Ensures all Azure resources are deployed with the same set of policies, reducing configuration drift.
- **Improved Security:** Codifies policies to enforce strict security controls like access and resource management.
- **Regulatory Compliance:** Helps meet industry regulations such as HIPAA and GDPR by enforcing mandatory policies.
- **Operational Efficiency:** Automates policy management, reducing manual overhead and increasing productivity.

## Project Objectives
- **Policy Version Management:** Continuously update to the latest EPAC versions for the most recent standards.
- **Manual Policy Application:** Provide clear instructions for manually applying policy definitions and assignments.
- **Comprehensive Documentation:** Maintain detailed documentation for easy adoption and updates.
- **Seamless Integration:** Ensure smooth integration with existing CI/CD pipelines using Azure Policy as Code best practices.

## How This Project Works
1. **Automated Deployment:** Uses GitHub Actions to deploy policies as code using Azure PowerShell and EPAC modules.
2. **Manual Application:** Provides steps for manually applying policy definitions as needed.
3. **Version Control:** Ensures stability by using pinned versions of Az modules and EPAC, with flexibility for updates.

## Tools Required
1. **Azure CLI:** The Azure Command-Line Interface (CLI) is a set of commands used to manage Azure resources.
    - Install from [Azure CLI Documentation](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
    
2. **PowerShell:** A task automation and configuration management framework, primarily for managing Azure resources.
    - Install from [PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/)
    
3. **Azure PowerShell Modules:** A set of modules to interact with Azure resources and policies programmatically.
    - Modules like `Az`, `Az.Resources`, `Az.ResourceGraph`, and `EnterprisePolicyAsCode` are required for policy management.
    - Install using PowerShell with:
    ```powershell
    Install-Module Az -RequiredVersion <version> -Force -AllowClobber
    Install-Module Az.ResourceGraph -RequiredVersion <version> -Force -AllowClobber
    Install-Module Az.Resources -RequiredVersion <version> -Force -AllowClobber
    Install-Module EnterprisePolicyAsCode -RequiredVersion <version> -Force -AllowClobber
    ```

4. **GitHub Actions:** Used for automating the process of policy deployment as code in a CI/CD pipeline.

## Basic Commands for EPAC

### 1. **Deploy Policy Plan**
    ```
    Deploy-PolicyPlan -definitionsRootFolder <path_to_definitions> -inputFolder <path_to_plan_folder> -pacEnvironment <pac_environment_name>
    ```

### 2. **Manually Applying Policy Definitions**
    ```
    New-AzPolicyAssignment -Name "<Assignment_Name>" -PolicyDefinition "<Policy_Definition_ID>" -Scope "/subscriptions/<subscription_id>"
    ```

### 3. **Login to Azure using OIDC**
   This command authenticates and sets up a session with Azure via GitHub Actions using a service principal:
   ```yaml
   - name: OIDC Azure Login
     uses: Azure/login@v2
     with:
       client-id: ${{ vars.CLIENT_ID }}
       subscription-id: ${{ vars.SUBSCRIPTION_ID }}
       tenant-id: ${{ vars.TENANT_ID }}
       enable-AzPSSession: true
   ```

## Reference Documentation
- [Azure Policy Documentation](https://learn.microsoft.com/en-us/azure/governance/policy/overview)
- [EPAC GitHub Repository](https://github.com/Azure/Enterprise-Policy-As-Code)
- [Azure CLI Documentation](https://learn.microsoft.com/en-us/cli/azure/)
- [PowerShell Documentation](https://docs.microsoft.com/en-us/powershell/)

## Conclusion
This project is essential for maintaining a secure, compliant, and well-governed Azure environment. By leveraging EPAC, it ensures adherence to industry standards, enforces best practices, and minimizes manual intervention in policy management, aligning with modern DevSecOps practices.

