p6_aws_s3api_object_legal_hold_put() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws s3api put-object-legal-hold --bucket $bucket --key $key "$@"
}
