p6_aws_emr_security_configuration_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws emr delete-security-configuration --name $name "$@"
}
