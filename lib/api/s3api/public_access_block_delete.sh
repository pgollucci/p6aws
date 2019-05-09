p6_aws_s3api_public_access_block_delete() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api delete-public-access-block --bucket $bucket "$@"
}
