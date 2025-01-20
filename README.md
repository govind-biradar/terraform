# Terraform Project

HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

---

<img src="https://github.com/user-attachments/assets/54ce6e6c-c8b7-4f72-a81c-50ed2ab084b0" alt="Terraform Screenshot" width="400" />


## **Why Terraform?**
- **Manage Any Infrastructure**: Supports multiple providers such as AWS, Azure, GCP, and on-premise systems.
- **Track Your Infrastructure**: Uses a state file to track and maintain your infrastructure's current status.
- **Automate Changes**: Plan, preview, and apply changes with minimal manual intervention.
- **Standardize Configurations**: Reuse modules and ensure consistency across environments.
- **Collaborate Easily**: Version control with Git ensures seamless collaboration and approval processes.

---
## **Write configuration**

**Terraform Block**
The terraform {} block contains Terraform settings, including the required providers Terraform will use to provision your infrastructure. For each provider, the source attribute defines an optional hostname, a namespace, and the provider type. Terraform installs providers from the Terraform Registry by default. In this example configuration, the aws provider's source is defined as hashicorp/aws, which is shorthand for registry.terraform.io/hashicorp/aws.


**Providers**
The provider block configures the specified provider, in this case aws. A provider is a plugin that Terraform uses to create and manage your resources.

**Resources**
Use resource blocks to define components of your infrastructure. A resource might be a physical or virtual component such as an EC2 instance, or it can be a logical resource such as a Heroku application.
