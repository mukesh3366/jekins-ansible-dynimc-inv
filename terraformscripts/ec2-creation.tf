provider "aws"{
   region  = "ap-southeast-1" 
   
}

resource "aws_instance" "jenkinswithterraform"{
     count   = 1
     ami     =  "ami-05c8ca4485f8b138a"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name        = "project"
     tags = {
        Name = "tomcatserver"
     }
}
