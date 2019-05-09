p6_aws_greengrass_group_certificate_authority_get() {
    local certificate_authority_id="$1"
    local group_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-group-certificate-authority --certificate-authority-id $certificate_authority_id --group-id $group_id "$@"
}
