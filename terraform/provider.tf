provider "aws" {
	region = "us-east-1"
}

backend "s3" {
	bucket_id = "1978ABC"
	key = "789456" 
}