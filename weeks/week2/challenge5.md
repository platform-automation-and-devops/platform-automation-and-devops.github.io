# Challenge 5 - Conditional Server Configurations from JSON 🖥️

[< Previous Challenge](./challenge4.md) | **[Home](./introduction.md)**

## Description

In this challenge, you’ll expand on dynamically creating resources using configurations from a JSON file. However, only certain server configurations will be enabled based on a flag in the JSON data. You’ll first filter the list of servers with a `for` expression, then use the `for_each` argument to create resources only for the enabled servers. This introduces a common pattern for filtering and dynamically controlling resources in Terraform.

## Success Criteria

1. [ ] Create a JSON file named `server_configs.json` with at least three server configurations, each including an `enabled` boolean field (see example in Resources).
2. [ ] Use the `file()` function to read the JSON data and `jsondecode()` to parse it in Terraform.
3. [ ] Use a `for` expression to filter the list of servers and retain only those with `"enabled": true`.
4. [ ] Configure a `terraform_data` resource to loop through the filtered list using `for_each`, creating a resource only for enabled servers.
5. [ ] Set the `input` attribute of each `terraform_data` resource to display the server’s name, region, and environment.
6. [ ] Run `terraform plan` to verify the correct resources are created, and apply the configuration to confirm.

## Resources

- [File Function](https://developer.hashicorp.com/terraform/language/functions/file)
- [JSON Decode](https://developer.hashicorp.com/terraform/language/functions/jsondecode)
- [For Expressions](https://developer.hashicorp.com/terraform/language/expressions/for)
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
          "enabled": true,
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
          "enabled": false,
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
          "enabled": true,
          "tags": {
            "app": "cache",
            "tier": "backend"
          }
        }
      ]
    }
    ```
