p6_aws_iot_certificate_transfer_cancel() {
    local certificate_id="$1"
    shift 1

    p6_run_write_cmd aws iot cancel-certificate-transfer --certificate-id $certificate_id "$@"
}
