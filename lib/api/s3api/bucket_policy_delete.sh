p6_aws_s3api_bucket_policy_delete() {
    local bucket="$1"
    shift 1

    p6_log_or_run aws s3api delete-bucket-policy --bucket $bucket "$@"
}
