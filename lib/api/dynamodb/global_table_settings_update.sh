p6_aws_dynamodb_global_table_settings_update() {
    local global_table_name="$1"
    shift 1

    p6_log_or_run aws dynamodb update-global-table-settings --global-table-name $global_table_name "$@"
}
