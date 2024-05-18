provider "aws" {
    region = "us-east-1"
}
#2nd provider
provider "aws" {
    region = "us-east-2"
    alias = "ohio"
}
#3rd provider
provider "aws" {
    region = "us-west-1"
    alias = "ncalifornia"
  
}
resource "aws_s3_bucket" "nvirginias3" {
    bucket = "provideronebucket"
  
}
resource "aws_s3_bucket" "Ohios3" {
    bucket = "provider2bucket"
    provider = aws.ohio
  
}
resource "aws_s3_bucket" "californias3" {
    bucket = "provider3bucket"
    provider = aws.ncalifornia
  
}