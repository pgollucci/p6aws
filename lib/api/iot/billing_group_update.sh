p6_aws_iot_billing_group_update() {
    local billing_group_name="$1"
    local billing_group_properties="$2"
    shift 2

    p6_log_or_run aws iot update-billing-group --billing-group-name $billing_group_name --billing-group-properties $billing_group_properties "$@"
}
