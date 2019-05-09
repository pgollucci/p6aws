p6_aws_iot_billing_group_delete() {
    local billing_group_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-billing-group --billing-group-name $billing_group_name "$@"
}
