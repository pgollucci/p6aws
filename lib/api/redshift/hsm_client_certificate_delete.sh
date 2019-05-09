p6_aws_redshift_hsm_client_certificate_delete() {
    local hsm_client_certificate_identifier="$1"
    shift 1

    p6_log_or_run aws redshift delete-hsm-client-certificate --hsm-client-certificate-identifier $hsm_client_certificate_identifier "$@"
}
