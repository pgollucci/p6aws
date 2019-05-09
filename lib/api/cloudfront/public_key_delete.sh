p6_aws_cloudfront_public_key_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront delete-public-key --id $id "$@"
}
