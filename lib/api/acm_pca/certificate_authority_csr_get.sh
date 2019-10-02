######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_certificate_authority_csr_get(certificate_authority_arn)
#
#  Args:
#	certificate_authority_arn - 
#
#>
######################################################################
p6_aws_acm_pca_certificate_authority_csr_get() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_read_cmd aws acm-pca get-certificate-authority-csr --certificate-authority-arn $certificate_authority_arn "$@"
}