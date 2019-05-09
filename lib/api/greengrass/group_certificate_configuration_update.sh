p6_aws_greengrass_group_certificate_configuration_update() {
    local group_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-group-certificate-configuration --group-id $group_id "$@"
}
