# Interview AWS Env Setup

```sh
terraform init
terraform apply --auto-approve
terraform destroy --auto-approve
```

Install

1. Go to [user](https://console.aws.amazon.com/iam/home?region=us-east-1#/users/interview?section=security_credentials)
2. Click "Manage" next to "Console password"
3. Click "Enable"
4. Click "Custom password"
5. Enter "interview{name}"
6. Click "Apply"

```sh
terraform init
terraform apply --auto-approve
```

User

1. Go to [login](https://jzbruno.signin.aws.amazon.com/console)
2. Create infra (fix vpc, ec2, sg update)
3. Setup [app](https://github.com/jzbruno/interview/releases/download/v1.0.0/app)

Delete

1. Go to [user](https://console.aws.amazon.com/iam/home?region=us-east-1#/users/interview?section=security_credentials)
2. Click "Manage" next to "Console password"
3. Click "Disable"
4. Click "Apply"

```sh
terraform destroy --auto-approve
```
