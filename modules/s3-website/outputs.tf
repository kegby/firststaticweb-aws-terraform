output "website_endpoint" {
  description = "The public url of this website."
  value = "${aws_s3_bucket_website_configuration.static_site_config.website_endpoint}"
}