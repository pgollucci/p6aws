p6_aws_glue_security_configuration_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws glue get-security-configuration --name $name "$@"
}
