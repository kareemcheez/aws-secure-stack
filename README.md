# AWS Secure Stack 

A **Terraform-powered, secure-by-default AWS environment** that demonstrates best practices in cloud security, cost control, and static site hosting — all within the AWS Free Tier (by default).

---

## What This Deploys

| Component        | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| **IAM Policy**   | Enforces strong password rules across the AWS account                       |
| **S3 Logging**   | Secure, versioned, encrypted S3 bucket for logs (CloudTrail, etc.)          |
| **CloudTrail**   | Multi-region trail logging all API activity to the logging bucket           |
| **Budget Alerts**| Monthly AWS budget to prevent surprise costs                                |
| **Static Site**  | Public static website hosted on S3 with custom index + error pages          |
| **GuardDuty**    | Threat detection for account behavior *(optional, disabled by default)*     |
| **AWS Config**   | Compliance rule tracking *(optional, disabled by default)*                  |
| **SecurityHub**  | Security posture monitoring *(optional, disabled by default)*               |

---

## Tools Used

- [Terraform](https://www.terraform.io/) (v1.5+)
- AWS Provider (v5+)
- Modular folder structure for clean infrastructure code

---

## Project Structure

```bash
aws-secure-stack/
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── terraform.tfvars.example
├── README.md
├── modules/
│   ├── iam-policy/
│   ├── s3-logging/
│   ├── cloudtrail/
│   ├── budgets/
│   ├── static-site/
│   ├── guardduty/         # Optional + disabled by default
│   ├── aws-config/        # Optional + disabled by default
│   └── securityhub/       # Optional + disabled by default

 
## How to Enable All Resources (GuardDuty, Config, SecurityHub)
Edit your terraform.tfvars (or pass these as CLI vars) and set:

enable_guardduty   = true
enable_aws_config  = true
enable_securityhub = true