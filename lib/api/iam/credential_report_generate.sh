p6_aws_iam_credential_report_generate() {

    p6_log_or_run aws iam generate-credential-report "$@"
}
