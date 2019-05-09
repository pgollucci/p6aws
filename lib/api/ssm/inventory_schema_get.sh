p6_aws_ssm_inventory_schema_get() {

    p6_run_read_cmd aws ssm get-inventory-schema "$@"
}
