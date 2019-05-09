p6_aws_glue_security_configuration_create() {
    local name="$1"
    local encryption_configuration="$2"
    shift 2

    p6_log_or_run aws glue create-security-configuration --name $name --encryption-configuration $encryption_configuration "$@"
}
