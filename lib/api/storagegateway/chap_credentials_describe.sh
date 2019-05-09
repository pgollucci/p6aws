p6_aws_storagegateway_chap_credentials_describe() {
    local target_arn="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-chap-credentials --target-arn $target_arn "$@"
}
