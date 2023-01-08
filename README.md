# Terraform Reusable Workflow for GitHub Actions

This Workflow will check if the Terraform code is formatted, valid, secure, generate documentation, create a workspace in Terraform Cloud, plan the Terraform code and apply the Terraform code if the pull request is merged. Terraform directory structure has been designed to be reusable across multiple cloud providers and multiple environments.

![Workflow Diagram](docs/images/workflow-diagram.png)

## Prerequisites

- [Terraform Cloud Account](https://app.terraform.io)

### Step 1 - Terraform Cloud (free tier)
```bash
# Create a Terraform Cloud account
https://app.terraform.io

# Create a Terraform Cloud organization
https://app.terraform.io/app/organizations/new

# Create a Terraform Cloud Organization API token
https://app.terraform.io/app/<ORGANIZATION_NAME>/settings/authentication-tokens

# Save the Terraform Cloud Organization API token, you will need it later in the GitHub repository secrets
```

### Step 2 - Project
```bash
# Fork the repository
https://github.com/garis-space/iac-tf
```

Set Terraform Cloud Organization API Token and Organization name as a secret in the GitHub repository settings
![GitHub Action Secrets](docs/images/github-action-secrets.png)

```bash
# Clone the forked repository
git clone git@github.com:garis-space/iac-tf.git
cd iac-tf
```

In the root directory of the project we have terraform directory structure that is designed to be reusable across multiple cloud providers and multiple environments. The directory structure is as follows:
- modules (Terraform modules)
- environments (Terraform workspaces)

### Step 3 - Create a Terraform Cloud workspaces
