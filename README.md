# terraform
AWS-terraform projects
### create an EC2 instance using terraform
```
1.Firstly, we need to create an IAM(Identity and access management) user to manage access to AWS resources.
2.Create the access keys and store the access key in your directory.(f.g.C:\Users\LENOVO\.aws) credentials will be stored here.
3.create a main.tf file and give the configurations/details.(which holds main configuration)
```
### to check the terraform version after installing.
```
terraform --version
```

### create a directory to store terraform
```
mkdir terraform-ec2
```
### initialize terraform- Download Provider Plugins:
```
terraform init
```
### to validate the terraform provider configs
```
terraform validate
```
### Preview Changes:Check Your Configuration:
```
terraform plan
```
### terraform plan -out to make sure the exact changes gets applied which are mentioned in configuration file
```
terraform plan -out=tfplan
terraform apply tfplan

### Apply Changes: 
```
terraform apply
```
