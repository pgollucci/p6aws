p6_aws_emr_security_configuration_create() {
    local name="$1"
    local security_configuration="$2"
    shift 2

    p6_log_or_run aws emr create-security-configuration --name $name --security-configuration $security_configuration "$@"
}
