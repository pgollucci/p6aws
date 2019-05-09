p6_aws_backup_protected_resource_describe() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws backup describe-protected-resource --resource-arn $resource_arn "$@"
}
