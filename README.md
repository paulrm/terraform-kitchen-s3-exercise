# terraform-kitchen-s3-exercise

## Requirments 
- Software 
  - ruby <= 2.5 
  - Terraform v0.12.8
  - provider.aws v2.28.1
  - kitchen 
  - bundler 
  - terraform-kitchen 

- Enviroment Variables

```
export AWS_ACCESS_KEY_ID="anaccesskey"
export AWS_SECRET_ACCESS_KEY="asecretkey"
export AWS_DEFAULT_REGION="us-east-1"
export TF_VAR_s3_bucket_name="test-bucket"
```

## Run 
- to execute Terraform

```
terraform init
terraform plan 
terraform apply
```

## Run kitchen
- to execute Kitchen
```
bundle install
gem exec kitchen create
gem exec kitchen verify
gem exec kitchen test
```
