p6_aws_s3api_public_access_block_get() {
    local bucket="$1"
    shift 1

    p6_log_and_run aws s3api get-public-access-block --bucket $bucket "$@"
}
