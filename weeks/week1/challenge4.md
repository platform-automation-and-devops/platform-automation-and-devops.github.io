# Challenge 4 - Variables Continued

[< Previous Challenge](./challenge3.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge5.md)

## Description

Other than setting default values for variables, there are other ways to set variables in Terraform. In this challenge, you will explore all the different ways of setting variables in Terraform.

## Success Criteria

1. [ ] Environment Variables
    - [ ] Set the value of the `greeting` variable to "Hello World Env Var" using a Terraform Environment Variable.
    - [ ] Run a `terraform plan` and confirm that there's 0 resource to add and 1 to change.
    - [ ] Run a `terraform apply` and confirm the value has been updated.
2. [ ] Command Line Flags
    - [ ] Run a `terraform plan` with the `-var` option to set the value of the `greeting` variable to "Hello World CLI". (TIP: Use the -out option to save the plan to a file with a name of your choice).
    - [ ] Run a `terraform apply <plan name>` on the plan file created in the previous step.
3. [ ] tfvars files
    - [ ] Run a `terraform plan` with the `-var-file` option pointing to a .tfvars file to set the value of the `greeting` variable to "Hello World tfvars".
    - [ ] Run a `terraform apply <plan name>` and confirm the value has been updated.
4. [ ] Auto tfvars
    - [ ] Create an auto tfvars file with the value of the `greeting` variable set to "Hello World auto tfvars".
    - [ ] Run a `terraform plan` (without additional command line arguments) and confirm that the resource was created with the value of the `greeting` variable.
5. [ ] List the order of precedence for setting variables in Terraform in the case of multiple values being set for the same variable.

## Resources

- [Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)
- [Terraform Plan](https://developer.hashicorp.com/terraform/cli/commands/plan)
