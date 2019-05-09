p6_aws_sms_connector_disassociate() {
    local connector_id="$1"
    shift 1

    p6_log_or_run aws sms disassociate-connector --connector-id $connector_id "$@"
}
