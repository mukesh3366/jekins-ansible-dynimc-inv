provider "aws"{
   region  = "ap-southeast-1" 
   
}

resource "aws_instance" "jenkinswithterraform"{
     count   = 1
     ami     =  "ami-051f0947e420652a9"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name        = "ansible-daily"
     tags = {
        Name = "tomcatserver"
     }
}
