p6_aws_emr_security_configuration_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws emr delete-security-configuration --name $name "$@"
}
