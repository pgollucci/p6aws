p6_aws_glue_security_configuration_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-security-configuration --name $name "$@"
}
