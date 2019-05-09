p6_aws_dynamodb_global_table_settings_describe() {
    local global_table_name="$1"
    shift 1

    p6_run_read_cmd aws dynamodb describe-global-table-settings --global-table-name $global_table_name "$@"
}
