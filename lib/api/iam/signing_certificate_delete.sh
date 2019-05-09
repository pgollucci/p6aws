p6_aws_iam_signing_certificate_delete() {
    local certificate_id="$1"
    shift 1

    p6_log_or_run aws iam delete-signing-certificate --certificate-id $certificate_id "$@"
}
