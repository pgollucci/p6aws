p6_aws_ssm_parameter_put() {
    local name="$1"
    local value="$2"
    local type="$3"
    shift 3

    p6_log_or_run aws ssm put-parameter --name $name --value $value --type $type "$@"
}
