# Azure DevOps: Simple Terraform in Automation

## Challenges

### 1. Create Simple Terraform File in Repository with a Service Connection to Utilize and Pipeline to Execute
- **Objective:** Create and execute a Terraform file using Azure DevOps.
- **Steps:**
    1. Create a Storage Account and a Container in Azure to have persistent storage for the Terraform state file.
    2. Create a service connection in Azure DevOps.
    3. Create a pipeline to execute the Terraform file.

### 2. Alternate the tfvars File with the Pipeline
- **Objective:** Use different tfvars files in the pipeline.
- **Steps:**
    1. Enable variables in your Terraform file.
    2. Create different tfvars files.
    3. Modify the pipeline to use different tfvars files based on conditions. This should toggle the state too.

### 3. Move to ‘Plan’, ‘Publish Artifact’, ‘Apply from Plan’
- **Objective:** Implement a full Terraform workflow in Azure DevOps.
- **Steps:**
    1. Create a pipeline stage for `terraform plan`.
    2. Publish the plan as an artifact.
    3. Create a pipeline stage to `apply` from the plan.