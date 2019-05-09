p6_aws_neptune_db_parameters_describe() {
    local db_parameter_group_name="$1"
    shift 1

    p6_log_and_run aws neptune describe-db-parameters --db-parameter-group-name $db_parameter_group_name "$@"
}
