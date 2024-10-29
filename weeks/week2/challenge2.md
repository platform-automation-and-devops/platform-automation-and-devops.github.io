# Challenge 2 - Toggle Resource Creation with Count 🕹️

[< Previous Challenge](./challenge1.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge3.md)

## Description

In this challenge, you’ll use a variable as a toggle switch to control the creation of resources in Terraform. By combining conditional logic with the `count` meta-argument, you’ll gain control over whether a specific resource is created based on a single setting.

## Success Criteria

1. [ ] Define a variable to act as a toggle for enabling or disabling a resource.
2. [ ] Set up a condition that will use this toggle to control the resource’s creation.
3. [ ] Configure the input of the `terraform_data` resource to display a message only when the toggle is enabled.
4. [ ] Test different toggle values and observe the resulting changes when applying the configuration.

## Resources

- [Count Meta-Argument](https://developer.hashicorp.com/terraform/language/meta-arguments/count)
- [Conditional Expressions](https://developer.hashicorp.com/terraform/language/expressions/conditionals)
- [Bools](https://developer.hashicorp.com/terraform/language/expressions/types#bools)
- [Variable Types](https://developer.hashicorp.com/terraform/language/values/variables#type-constraints)
