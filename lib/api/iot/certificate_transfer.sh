p6_aws_iot_certificate_transfer() {
    local certificate_id="$1"
    local target_aws_account="$2"
    shift 2

    p6_log_or_run aws iot transfer-certificate --certificate-id $certificate_id --target-aws-account $target_aws_account "$@"
}
