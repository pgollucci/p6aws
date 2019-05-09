p6_aws_s3api_object_tagging_delete() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_log_or_run aws s3api delete-object-tagging --bucket $bucket --key $key "$@"
}
