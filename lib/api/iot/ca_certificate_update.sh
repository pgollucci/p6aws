p6_aws_iot_ca_certificate_update() {
    local certificate_id="$1"
    shift 1

    p6_log_or_run aws iot update-ca-certificate --certificate-id $certificate_id "$@"
}
