p6_aws_ssm_inventory_delete() {
    local type_name="$1"
    shift 1

    p6_run_write_cmd aws ssm delete-inventory --type-name $type_name "$@"
}
