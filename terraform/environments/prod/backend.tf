terraform {
  cloud {
    workspaces {
      # Organization name set as TF_ORGANIZATION secret in GitHub repository and used in GitHub Actions

      # Workspace name: <environment>-<provider>-<region>
      name = "prod-gcp-europe-southwest1"
    }
  }

  required_version = ">= 1.3" # Configure the Terraform version
}
