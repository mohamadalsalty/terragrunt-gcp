# Terragrunt GCP PoC

This project is a Proof of Concept (PoC) for using Terragrunt to manage infrastructure as code on Google Cloud Platform (GCP). Terragrunt is a thin wrapper for Terraform that provides extra tools for working with multiple Terraform modules.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/) installed
- Configure your cloud provider credentials

## Project Structure

The project is structured as follows:

```
terragrunt
├── live
│   ├── dev
│   │   └── gcs
│   │       ├── terraform.tfvars
│   │       └── terragrunt.hcl
│   └── prod
│       └── gcs
│           ├── terraform.tfvars
│           └── terragrunt.hcl
├── modules
│   └── gcs
│       ├── main.tf
│       └── variables.tf
├── provider.tf
├── state.tf
└── terragrunt.hcl
```

## How to Use

1. **Clone the repository**

2. **Change to the desired environment** (dev or prod):

   For development:
   ```
   cd live/dev/gcs
   ```

   For production:
   ```
   cd live/prod/gcs
   ```

3. **Initialize Terragrunt**:

   ```
   terragrunt init
   ```

4. **Apply the configuration**:

   ```
   terragrunt apply
   ```

## Configuration Files

- **`terraform.tfvars`**: Contains variable definitions for the Terraform configuration.
- **`terragrunt.hcl`**: Defines the Terragrunt configuration, including remote state settings and dependencies.
- **`main.tf`**: The main Terraform configuration file that defines the resources to be provisioned.
- **`variables.tf`**: Contains the variable definitions used in the `main.tf` file.
- **`provider.tf`**: Specifies the cloud provider configuration.
- **`state.tf`**: Manages the backend state configuration for Terraform.

## Contributing

If you'd like to contribute to this project, please fork the repository and create a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

