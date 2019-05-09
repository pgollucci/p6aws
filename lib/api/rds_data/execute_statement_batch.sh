p6_aws_rds_data_execute_statement_batch() {
    local resource_arn="$1"
    local secret_arn="$2"
    local sql="$3"
    shift 3

    p6_run_write_cmd aws rds-data batch-execute-statement --resource-arn $resource_arn --secret-arn $secret_arn --sql $sql "$@"
}
