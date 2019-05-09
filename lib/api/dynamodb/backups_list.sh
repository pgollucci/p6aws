p6_aws_dynamodb_backups_list() {

    p6_log_and_run aws dynamodb list-backups "$@"
}
