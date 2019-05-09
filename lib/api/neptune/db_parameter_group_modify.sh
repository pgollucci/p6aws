p6_aws_neptune_db_parameter_group_modify() {
    local db_parameter_group_name="$1"
    local parameters="$2"
    shift 2

    p6_log_or_run aws neptune modify-db-parameter-group --db-parameter-group-name $db_parameter_group_name --parameters $parameters "$@"
}
