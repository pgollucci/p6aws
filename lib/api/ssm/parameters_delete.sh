p6_aws_ssm_parameters_delete() {
    local names="$1"
    shift 1

    p6_log_or_run aws ssm delete-parameters --names $names "$@"
}
