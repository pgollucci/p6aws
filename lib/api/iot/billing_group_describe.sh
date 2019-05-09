p6_aws_iot_billing_group_describe() {
    local billing_group_name="$1"
    shift 1

    p6_log_and_run aws iot describe-billing-group --billing-group-name $billing_group_name "$@"
}
