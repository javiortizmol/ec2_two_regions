#!/bin/bash


#Prerequesites
#1. Install terraform version, please check the .terraform-version
#2. Please add the sec group ids and subnets id on locals.tf
#3. Put your aws credentials on the variables AWSACCESSKEY & AWSSECRETKEY

# Global Variables
# AWSACCESSKEY=""
# AWSSECRETKEY=""


# export AWS_ACCESS_KEY_ID="$AWSACCESSKEY"
# export AWS_SECRET_ACCESS_KEY="$AWSSECRETKEY"

export AWS_PROFILE=myprofile

terraform init

if [ "$1" == "plan" ] || [ "$1" == "apply" ] || [ "$1" == "destroy" ] ; then
    terraform $1 
fi