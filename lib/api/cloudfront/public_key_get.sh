p6_aws_cloudfront_public_key_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront get-public-key --id $id "$@"
}
