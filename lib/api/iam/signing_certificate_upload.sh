p6_aws_iam_signing_certificate_upload() {
    local certificate_body="$1"
    shift 1

    p6_log_or_run aws iam upload-signing-certificate --certificate-body $certificate_body "$@"
}
