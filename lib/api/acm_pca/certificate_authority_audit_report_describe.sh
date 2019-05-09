p6_aws_acm_pca_certificate_authority_audit_report_describe() {
    local certificate_authority_arn="$1"
    local audit_report_id="$2"
    shift 2

    p6_run_read_cmd aws acm-pca describe-certificate-authority-audit-report --certificate-authority-arn $certificate_authority_arn --audit-report-id $audit_report_id "$@"
}
