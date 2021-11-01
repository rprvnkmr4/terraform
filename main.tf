

resource "aws_instance" "test_server" {
    ami = "ami-02e136e904f3da870"
    instance_type = "t2.micro"
    availability_zone = "us-east-1b"
   root_block_device {
     volume_size = 20
     delete_on_termination = true
     tags = {
       "Name" = "Test Volume"
     }
   }
    tags = {
        Name = "tftestinstance"
    }
}

resource "aws_ebs_volume" "testvolume" {
    availability_zone = "us-east-1b"
    size = 10

}

resource "aws_volume_attachment" "test" {
    instance_id = aws_instance.test_server.id
    device_name = "/dev/xvdb"
    volume_id = aws_ebs_volume.testvolume.id
}
