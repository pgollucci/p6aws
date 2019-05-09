p6_aws_iot_certificate_transfer_reject() {
    local certificate_id="$1"
    shift 1

    p6_log_or_run aws iot reject-certificate-transfer --certificate-id $certificate_id "$@"
}
