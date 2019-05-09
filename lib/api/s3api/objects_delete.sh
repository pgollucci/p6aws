p6_aws_s3api_objects_delete() {
    local bucket="$1"
    local delete="$2"
    shift 2

    p6_log_or_run aws s3api delete-objects --bucket $bucket --delete $delete "$@"
}
