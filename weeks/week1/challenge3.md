# Challenge 3 - Variables

[< Previous Challenge](./challenge2.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge4.md)

## Description

Whereas `locals` are used to abstract away static values, `variables` are used to abstract away dynamic values. In this challenge, you will be using Terraform's `variable` block to define a variable and reference it in your configuration.

## Success Criteria

1. [ ] Create a new `variable` block called `greeting` with a default value of "Hello World".
2. [ ] Create a third resource with the input argument value of the `greeting` variable.
3. [ ] Run a `terraform plan` and confirm that there's 1 resource to add and 0 to change.
4. [ ] Run a `terraform apply` and confirm that the resource was created with the value of the `greeting` variable.

## Resources

- [Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)
