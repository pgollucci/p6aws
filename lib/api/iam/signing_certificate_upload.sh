p6_aws_iam_signing_certificate_upload() {
    local certificate_body="$1"
    shift 1

    p6_run_write_cmd aws iam upload-signing-certificate --certificate-body $certificate_body "$@"
}
