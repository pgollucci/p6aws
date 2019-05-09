p6_aws_glue_security_configuration_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws glue delete-security-configuration --name $name "$@"
}
