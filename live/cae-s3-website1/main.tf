provider "aws" {}

module "s3-website" {
  source = "/home/kegby/udemy/terraform_course1/static-website-terraform-deploy-aws/modules/s3-website"
  bucket_name = "cae-s3-website1"
}

output "website_endpoint2" {
  value = module.s3-website.website_endpoint
}
