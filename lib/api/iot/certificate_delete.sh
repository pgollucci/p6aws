p6_aws_iot_certificate_delete() {
    local certificate_id="$1"
    shift 1

    p6_log_or_run aws iot delete-certificate --certificate-id $certificate_id "$@"
}
