# Prerequesites
1. Install terraform version, please check the .terraform-version
2. Please add the sec group ids and subnets id on locals.tf
3. Put your aws credentials on the variables AWSACCESSKEY & AWSSECRETKEY

# How to use
1. Run the plan command to check first the changes to apply.
````bash
./tf-tool.sh plan
````
2. Run the apply command to deploy changes previously reviewed.
```bash
./tf-tool.sh apply
```
3. Run the destroy command to destroy all the infrastructure created.
```bash
./tf-tool.sh destroy
```