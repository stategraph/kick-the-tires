# Terrateam Demo Repository

Try Terrateam in 5 minutes without any cloud credentials. This demo uses null resources instead of real infrastructure, so you can learn Terrateam's workflow without any cloud credentials.

## Quick Start (5 minutes)

1. **Fork this repository**
   Create a fork of this repository in your GitHub account.

2. **Enable GitHub Actions workflows**
   > ⚠️ **Important:** Forked repositories disable workflows by default for security reasons.
   
   - Go to your forked repository and click the **Actions** tab
   - You'll likely see "Workflows aren’t being run on this forked repository"
   - Click on **I understand my workflows, go ahead and enable them**
   
   ![Enable GitHub Actions workflows](./images/enable-workflows.png)

3. [Install the Terrateam GitHub App](https://github.com/apps/terrateam-action) on your account/organization

4. **Try it out**
   - Edit `dev/main.tf` - change `null_resource_count = 0` to `null_resource_count = 1`
   - Create a new branch and push your changes
   - Open a pull request
   - Watch Terrateam automatically comment with the terraform plan!

5. **Apply the changes**
   Comment `terrateam apply` on the PR to apply the changes. Terrateam will apply and auto-merge the PR if successful.

## What You'll See

When you open your first PR, Terrateam will automatically comment with the terraform plan output:

![Terrateam Plan](./images/terrateam-plan.png)

This demo uses `null_resource`, which doesn’t provision anything. It’s just a placeholder to show how Terrateam runs the Terraform workflow.

> ⚠️ **Important**: This demo doesn't persist Terraform state between runs. Each `terraform plan` starts fresh, so you won't see destroy operations for previously "created" resources. This keeps the demo simple, but real Terrateam deployments use persistent state backends.

## About This Demo

Terrateam automates Terraform workflows through pull requests. When you make infrastructure changes, Terrateam automatically runs `terraform plan` and posts results as PR comments. You can then apply changes directly from the PR.

This demo repository uses:
- **Null Resources:** Instead of real infrastructure, the module uses `null_resource`.
- **Local Backend:** Terraform state files are stored locally, eliminating the need for cloud provider credentials.
- **modules/**: Contains the reusable module 
- **dev/**: Shows how to call the module in a development environment

## Troubleshooting

**Terrateam isn't commenting on my PR?**
- Check your repository's Actions tab for disabled workflows
- Verify the Terrateam GitHub App is installed on your repository
- Make sure your PR changes Terraform files (`.tf` files)

**Want to understand how it works?** Check `modules/main.tf` to see how null resources work without creating real infrastructure

## Next Steps

Ready for real infrastructure? Here's what to do next:
- [Explore Terrateam's features](https://docs.terrateam.io/) to see what else you can do
- [Set up cloud provider integration](https://docs.terrateam.io/cloud-providers/) to work with real infrastructure
- [Explore advanced workflows](https://docs.terrateam.io/advanced-workflows) like drift detection and policy enforcement

## Contributing

Contributions are welcome! If you have suggestions or improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
