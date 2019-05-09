p6_aws_acm_pca_certificate_authority_certificate_get() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_read_cmd aws acm-pca get-certificate-authority-certificate --certificate-authority-arn $certificate_authority_arn "$@"
}
