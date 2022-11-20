resource "aws_instance" "Rundeck" {
    count                  = var.count_instance
    ami                    = var.aws_ami
    instance_type          = var.aws_instance_type
    security_groups        = ["sg_DefaultWebserver"]
    key_name               = "terraform"
    user_data              = file("install_Rundeck.sh")
    
    tags = {
        Name = "ec2-instance-rundeck${count.index + 1}"
    }
}