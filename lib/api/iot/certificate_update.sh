p6_aws_iot_certificate_update() {
    local certificate_id="$1"
    local new_status="$2"
    shift 2

    p6_log_or_run aws iot update-certificate --certificate-id $certificate_id --new-status $new_status "$@"
}
