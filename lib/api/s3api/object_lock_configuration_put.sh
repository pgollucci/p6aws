p6_aws_s3api_object_lock_configuration_put() {
    local bucket="$1"
    shift 1

    p6_log_or_run aws s3api put-object-lock-configuration --bucket $bucket "$@"
}
