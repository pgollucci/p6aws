p6_aws_rds_engine_default_parameters_describe() {
    local db_parameter_group_family="$1"
    shift 1

    p6_run_read_cmd aws rds describe-engine-default-parameters --db-parameter-group-family $db_parameter_group_family "$@"
}
