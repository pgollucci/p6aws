p6_aws_ssm_inventory_delete() {
    local type_name="$1"
    shift 1

    p6_log_or_run aws ssm delete-inventory --type-name $type_name "$@"
}
