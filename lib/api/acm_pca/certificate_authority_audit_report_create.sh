p6_aws_acm_pca_certificate_authority_audit_report_create() {
    local certificate_authority_arn="$1"
    local s3_bucket_name="$2"
    local audit_report_response_format="$3"
    shift 3

    p6_run_write_cmd aws acm-pca create-certificate-authority-audit-report --certificate-authority-arn $certificate_authority_arn --s3-bucket-name $s3_bucket_name --audit-report-response-format $audit_report_response_format "$@"
}
