p6_aws_storagegateway_chap_credentials_delete() {
    local target_arn="$1"
    local initiator_name="$2"
    shift 2

    p6_log_or_run aws storagegateway delete-chap-credentials --target-arn $target_arn --initiator-name $initiator_name "$@"
}
