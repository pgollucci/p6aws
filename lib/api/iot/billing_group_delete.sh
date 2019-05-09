p6_aws_iot_billing_group_delete() {
    local billing_group_name="$1"
    shift 1

    p6_log_or_run aws iot delete-billing-group --billing-group-name $billing_group_name "$@"
}
