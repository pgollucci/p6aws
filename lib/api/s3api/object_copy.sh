p6_aws_s3api_object_copy() {
    local bucket="$1"
    local copy_source="$2"
    local key="$3"
    shift 3

    p6_log_or_run aws s3api copy-object --bucket $bucket --copy-source $copy_source --key $key "$@"
}
