p6_aws_acm_pca_certificate_authority_describe() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_read_cmd aws acm-pca describe-certificate-authority --certificate-authority-arn $certificate_authority_arn "$@"
}
