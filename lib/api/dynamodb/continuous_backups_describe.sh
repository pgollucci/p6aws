p6_aws_dynamodb_continuous_backups_describe() {
    local table_name="$1"
    shift 1

    p6_log_and_run aws dynamodb describe-continuous-backups --table-name $table_name "$@"
}
