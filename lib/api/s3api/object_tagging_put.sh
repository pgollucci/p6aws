p6_aws_s3api_object_tagging_put() {
    local bucket="$1"
    local key="$2"
    local tagging="$3"
    shift 3

    p6_log_or_run aws s3api put-object-tagging --bucket $bucket --key $key --tagging $tagging "$@"
}
