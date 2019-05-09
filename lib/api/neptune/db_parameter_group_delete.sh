p6_aws_neptune_db_parameter_group_delete() {
    local db_parameter_group_name="$1"
    shift 1

    p6_log_or_run aws neptune delete-db-parameter-group --db-parameter-group-name $db_parameter_group_name "$@"
}
