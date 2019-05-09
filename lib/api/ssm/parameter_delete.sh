p6_aws_ssm_parameter_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws ssm delete-parameter --name $name "$@"
}
