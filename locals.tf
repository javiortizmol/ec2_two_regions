locals {
    vpc = {
        subnets = {
            main = "subnet-0e0326a44203eb17f"
            provisional = "subnet-87cb0ae1"            
        }
        sec_groups = {
            main = ["sg-522b1e16"]
            provisional = ["sg-005ea6050933f5501"]
        }
    }
    ec2 ={
        prefix = "omni"
        ami = {
            main = "ami-0ab4d1e9cf9a1215a"
            provisional = "ami-0113db2202e3b45a5"
        }
        instance_type = {
            main = "t2.micro"
            provisional = "t2.micro"
        }
        key = {
            main = "test_omni"
            provisional = "brasil_omni"
        }
        region = {
            main = "us-east-1"
            provisional = "sa-east-1"    
        }
    }

}