p6_aws_s3api_object_acl_put() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_log_or_run aws s3api put-object-acl --bucket $bucket --key $key "$@"
}
