resource "aws_instance" "web" {
  ami           = "ami-027cab9a7bf0155df"
  instance_type = "t2.micro"
}