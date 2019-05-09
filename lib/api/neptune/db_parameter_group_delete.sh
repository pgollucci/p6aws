p6_aws_neptune_db_parameter_group_delete() {
    local db_parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws neptune delete-db-parameter-group --db-parameter-group-name $db_parameter_group_name "$@"
}
