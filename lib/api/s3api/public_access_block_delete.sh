p6_aws_s3api_public_access_block_delete() {
    local bucket="$1"
    shift 1

    p6_log_or_run aws s3api delete-public-access-block --bucket $bucket "$@"
}
