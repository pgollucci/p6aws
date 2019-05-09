p6_aws_redshift_hsm_client_certificate_delete() {
    local hsm_client_certificate_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-hsm-client-certificate --hsm-client-certificate-identifier $hsm_client_certificate_identifier "$@"
}
