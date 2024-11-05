# Azure DevOps: Self-hosted Runners

## Challenges

### 1. Register a Single VM as an Agent Pool
- **Objective:** Learn how to register a single virtual machine as an agent pool in Azure DevOps.
- **Steps:**
    1. Create an Ubuntu virtual machine in Azure.
    2. Install and Registerthe Azure Pipelines agent on the VM.
    3. Run a simple "Hello, World!" pipeline onto your VM.

### 2. Configure the Single VM to Have Tooling on It
- **Objective:** Configure the VM with necessary tools and software.
- **Steps:**
    1. Install Terraform onto the VM.
    2. Alter your pipeline to run the command `terraform -v`.

### 3. Azure Container Instance with Agent Pools
- **Objective:** Use Azure Container Instances (ACI) with agent pools.
- **Steps:**
    1. Create an ACI.
    2. Register the ACI as an agent pool.
    3. Run your sample pipeline on the ACI.

### 4. Cloud-Init via Terraform + Scale Set Agent Pools
- **Objective:** VMSS with Cloud-Init
- **Steps:**
    1. Use the AVM module to create a scale set.
    2. Use Cloud-Init to configure the VMs so that terraform is installed.
    3. Register the scale set as an agent pool.
    4. Execute your sample pipeline on the scale set.

### 5. Managed Agent Pools
- **Objective:** Understand and use managed agent pools.
- **Steps:**
    1. Create a managed agent pool in Azure DevOps.
    2. Configure the pool settings.
    3. Run a pipeline using the managed agent pool.