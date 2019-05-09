p6_aws_dynamodb_global_table_describe() {
    local global_table_name="$1"
    shift 1

    p6_log_and_run aws dynamodb describe-global-table --global-table-name $global_table_name "$@"
}
