p6_aws_iot_certificate_register() {
    local certificate_pem="$1"
    shift 1

    p6_log_or_run aws iot register-certificate --certificate-pem $certificate_pem "$@"
}
