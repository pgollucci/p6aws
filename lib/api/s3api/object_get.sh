p6_aws_s3api_object_get() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_log_and_run aws s3api get-object --bucket $bucket --key $key "$@"
}
