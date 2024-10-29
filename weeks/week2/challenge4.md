# Challenge 4 - Server Configurations from JSON 🖥️

[< Previous Challenge](./challenge3.md) | **[Home](./introduction.md)** | [Next Challenge >](./challenge5.md)

## Description

In this challenge, you’ll use a JSON file to configure multiple `terraform_data` resources dynamically in Terraform. In many environments, it's common to have JSON files holding configuration that will then be eventually used to create terraform resources.

## Success Criteria

1. [ ] Create a JSON file named `server_configs.json` in your project directory with at least three server configurations (see example in Resources section).
2. [ ] Use the `file()` function in Terraform to read the JSON file and `jsondecode()` to parse its contents.
3. [ ] Configure a `terraform_data` resource with `for_each` to loop through each server configuration.
4. [ ] Customize each `terraform_data` resource's `input` attribute to output a message that includes the server’s name, region, and environment.
5. [ ] Run `terraform plan` to confirm the resources are set up correctly, and then `terraform apply` to apply the configuration.
6. [ ] Verify that each `terraform_data` resource displays the correct message in the Terraform output.

## Resources

- [File Function](https://developer.hashicorp.com/terraform/language/functions/file)
- [JSON Decode](https://developer.hashicorp.com/terraform/language/functions/jsondecode)
- [Terraform For Each](https://developer.hashicorp.com/terraform/language/meta-arguments/for_each)
- Example JSON Structure:

    ```json
    {
      "servers": [
        {
          "name": "web-server-1",
          "region": "us-east-1",
          "instance_type": "t2.micro",
          "environment": "production",
          "tags": {
            "app": "web",
            "tier": "frontend"
          }
        },
        {
          "name": "db-server-1",
          "region": "us-east-2",
          "instance_type": "t2.medium",
          "environment": "staging",
          "tags": {
            "app": "database",
            "tier": "backend"
          }
        },
        {
          "name": "cache-server-1",
          "region": "us-west-1",
          "instance_type": "t2.small",
          "environment": "development",
          "tags": {
            "app": "cache",
            "tier": "backend"
          }
        }
      ]
    }
    ```
