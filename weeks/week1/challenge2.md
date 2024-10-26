# Challenge 2 - Locals

[< Previous Challenge](./challenge1.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge3.md)

## Description

Abstract away static values within your configuration by using Terraform's `locals` block.

## Success Criteria

1. [ ] Create a second resource with the same input argument value of "Hello World".
2. [ ] Abstract the "Hello World" value into a `local` and reference the local in both resources.
3. [ ] Run a terraform plan and confirm that there's 1 resource to add and 0 to change.
4. [ ] Run a terraform apply and confirm that both resources were created with the value of the local. (TIP: Use the `-auto-approve` flag to skip the confirmation prompt)

## Resources

[Locals](https://developer.hashicorp.com/terraform/language/values/locals)
