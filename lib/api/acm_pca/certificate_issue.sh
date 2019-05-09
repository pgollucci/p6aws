p6_aws_acm_pca_certificate_issue() {
    local certificate_authority_arn="$1"
    local csr="$2"
    local signing_algorithm="$3"
    local validity="$4"
    shift 4

    p6_run_write_cmd aws acm-pca issue-certificate --certificate-authority-arn $certificate_authority_arn --csr $csr --signing-algorithm $signing_algorithm --validity $validity "$@"
}
