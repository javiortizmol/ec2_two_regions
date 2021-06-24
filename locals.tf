locals {
    vpc = {
        subnets = {
            main = ""
            provisional = ""            
        }
        sec_groups = {
            main = []
            provisional = []
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