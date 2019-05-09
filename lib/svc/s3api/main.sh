p6_aws_s3api_svc_bucket_policy() {
    local bucket="$1"

    p6_aws_s3api_bucket_policy_get "$bucket"
}
