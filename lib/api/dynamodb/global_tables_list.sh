p6_aws_dynamodb_global_tables_list() {

    p6_run_read_cmd aws dynamodb list-global-tables "$@"
}
