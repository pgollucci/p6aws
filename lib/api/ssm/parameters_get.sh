p6_aws_ssm_parameters_get() {
    local names="$1"
    shift 1

    p6_run_read_cmd aws ssm get-parameters --names $names "$@"
}
