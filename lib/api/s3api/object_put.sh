p6_aws_s3api_object_put() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws s3api put-object --bucket $bucket --key $key "$@"
}
