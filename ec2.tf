resource "aws_instance" "main" {
    provider                    = aws.main
    associate_public_ip_address = true
    ami                         = local.ec2.ami.main
    instance_type               = local.ec2.instance_type.main
    vpc_security_group_ids      = local.vpc.sec_groups.main
    subnet_id                   = local.vpc.subnets.main
    key_name                    = local.ec2.key.main
    tags = {
        Name = "${local.ec2.prefix}-main"
    }    
}

resource "aws_instance" "provisional" {
    provider                    = aws.provisional
    associate_public_ip_address = true
    ami                         = local.ec2.ami.provisional
    instance_type               = local.ec2.instance_type.provisional
    vpc_security_group_ids      = local.vpc.sec_groups.provisional 
    subnet_id                   = local.vpc.subnets.provisional
    key_name                    = local.ec2.key.provisional
    tags = {
        Name = "${local.ec2.prefix}-provisional"
    }    
}