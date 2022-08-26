resource "aws_s3_bucket" "static_site" {
  bucket = "${var.bucket_name}"
}

resource "aws_s3_bucket_acl" "static_site_acl" {
  bucket = "${aws_s3_bucket.static_site.bucket}"
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "static_site_config" {
  bucket = "${aws_s3_bucket.static_site.bucket}"

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "index" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "index.html"
  source       = "/home/kegby/udemy/terraform_course1/static-website-terraform-deploy-aws/live/cae-s3-website1/html/index.html"
  content_type = "text/html"
  etag         = "${md5(file("html/index.html"))}"
  acl          = "public-read"
}

resource "aws_s3_object" "page3" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "page3.html"
  source       = "/home/kegby/udemy/terraform_course1/static-website-terraform-deploy-aws/live/cae-s3-website1/html/page3.html"
  content_type = "text/html"
  etag         = "${md5(file("html/page3.html"))}"
  acl          = "public-read"
}

resource "aws_s3_object" "qst" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "qst.html"
  source       = "/home/kegby/udemy/terraform_course1/static-website-terraform-deploy-aws/live/cae-s3-website1/html/qst.html"
  content_type = "text/html"
  etag         = "${md5(file("html/qst.html"))}"
  acl          = "public-read"
}

resource "aws_s3_object" "table" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "table.html"
  source       = "/home/kegby/udemy/terraform_course1/static-website-terraform-deploy-aws/live/cae-s3-website1/html/table.html"
  content_type = "text/html"
  etag         = "${md5(file("html/table.html"))}"
  acl          = "public-read"
}

resource "aws_s3_object" "styles" {
  bucket       = "${aws_s3_bucket.static_site.bucket}"
  key          = "styles.css"
  source       = "/home/kegby/udemy/terraform_course1/static-website-terraform-deploy-aws/live/cae-s3-website1/styles/styles.css"
  content_type = "text/css"
  etag         = "${md5(file("styles/styles.css"))}"
  acl          = "public-read"
}