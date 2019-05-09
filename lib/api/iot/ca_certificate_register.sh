p6_aws_iot_ca_certificate_register() {
    local ca_certificate="$1"
    local verification_certificate="$2"
    shift 2

    p6_log_or_run aws iot register-ca-certificate --ca-certificate $ca_certificate --verification-certificate $verification_certificate "$@"
}
