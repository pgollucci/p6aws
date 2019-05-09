p6_aws_emr_security_configuration_describe() {
    local name="$1"
    shift 1

    p6_log_and_run aws emr describe-security-configuration --name $name "$@"
}
