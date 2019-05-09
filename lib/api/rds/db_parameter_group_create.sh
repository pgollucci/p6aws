p6_aws_rds_db_parameter_group_create() {
    local db_parameter_group_name="$1"
    local db_parameter_group_family="$2"
    local description="$3"
    shift 3

    p6_log_or_run aws rds create-db-parameter-group --db-parameter-group-name $db_parameter_group_name --db-parameter-group-family $db_parameter_group_family --description $description "$@"
}
