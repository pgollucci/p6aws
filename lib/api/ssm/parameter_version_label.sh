p6_aws_ssm_parameter_version_label() {
    local name="$1"
    local labels="$2"
    shift 2

    p6_log_or_run aws ssm label-parameter-version --name $name --labels $labels "$@"
}
