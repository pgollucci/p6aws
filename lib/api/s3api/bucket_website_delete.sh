p6_aws_s3api_bucket_website_delete() {
    local bucket="$1"
    shift 1

    p6_log_or_run aws s3api delete-bucket-website --bucket $bucket "$@"
}
