p6_aws_iot_certificate_update() {
    local certificate_id="$1"
    local new_status="$2"
    shift 2

    p6_run_write_cmd aws iot update-certificate --certificate-id $certificate_id --new-status $new_status "$@"
}
