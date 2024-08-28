terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.29.0"
    }
  }

  required_version = ">= 1.6.4"
}

provider "aws" {
  region = "eu-central-1"
}

variable "bucket_name" {
  type = string
}

module "frontend" {
  source = "github.com/Carlovo/cloudfront-s3"

  bucket_name  = var.bucket_name
  log_requests = true
}

output "cloudfront_endpoint" {
  value = module.frontend.cloudfront_endpoint
}

resource "aws_s3_object" "html" {
  for_each = fileset("docs/_build/html/", "**/*.html")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "text/html"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "javascript" {
  for_each = fileset("docs/_build/html/", "**/*.js")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "text/javascript"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "css" {
  for_each = fileset("docs/_build/html/", "**/*.{css,css.map}")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "text/css"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "txt" {
  for_each = fileset("docs/_build/html/", "**/*.{txt,md}")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "text/plain"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "png" {
  for_each = fileset("docs/_build/html/", "**/*.png")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "image/png"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "svg" {
  for_each = fileset("docs/_build/html/", "**/*.svg")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "image/svg+xml"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "ttf" {
  for_each = fileset("docs/_build/html/", "**/*.ttf")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "font/ttf"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "woff2" {
  for_each = fileset("docs/_build/html/", "**/*.woff2")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "font/woff2"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}

resource "aws_s3_object" "ico" {
  for_each = fileset("docs/_build/html/", "**/*.ico")

  bucket       = var.bucket_name
  key          = each.key
  content_type = "image/vnd.microsoft.icon"
  source       = "docs/_build/html/${each.key}"
  etag         = filemd5("docs/_build/html/${each.key}")
}
