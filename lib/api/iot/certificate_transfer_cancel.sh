p6_aws_iot_certificate_transfer_cancel() {
    local certificate_id="$1"
    shift 1

    p6_log_or_run aws iot cancel-certificate-transfer --certificate-id $certificate_id "$@"
}
