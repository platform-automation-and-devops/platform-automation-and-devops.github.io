# Challenge 3 - For Loops with Terraform Data 💬

[< Previous Challenge](./challenge2.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge4.md)

## Description

In this challenge, you’ll create a "Hello from..." message for each environment using Terraform's `for_each` argument and the `terraform_data` resource. You will define a list of environments and create a unique data resource with a custom message for each one.

This will introduce the basics of the `for_each` argument, giving you a foundation for looping and dynamically creating resources in Terraform.

## Success Criteria

1. [ ] Create a Terraform configuration file in a new directory.
2. [ ] Define a local named `environments` containing at least three environment names, such as dev, preprod, prod.
3. [ ] Use the `for_each` argument to create a `terraform_data` resource for each environment in the list.
4. [ ] Customize the `input` argument for each resource so that it says `"Hello from <environment>"`, where `<environment>` is the name of each environment in the list.
5. [ ] Run `terraform plan` to verify the resources are configured correctly.
6. [ ] Run `terraform apply` and confirm the generated output displays the correct message for each environment.

## Resources

- [Terraform For Each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)
- [The terraform_data Managed Resource Type](https://developer.hashicorp.com/terraform/language/resources/terraform-data)
- [Terraform CLI](https://developer.hashicorp.com/terraform/cli)
