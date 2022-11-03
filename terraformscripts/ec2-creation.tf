provider "aws"{
   region  = "ap-southeast-1" 
   
}


resource "aws_instance" "tomcatserver" {
  ami           = "ami-051f0947e420652a9"
  instance_type = "t2.micro"

  tags = {
    Name = "tomcatserver"
  }
}
