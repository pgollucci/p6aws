######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_certificate_get(certificate_authority_arn, certificate_arn)
#
#  Args:
#	certificate_authority_arn - 
#	certificate_arn - 
#
#>
######################################################################
p6_aws_acm_pca_certificate_get() {
    local certificate_authority_arn="$1"
    local certificate_arn="$2"
    shift 2

    p6_run_read_cmd aws acm-pca get-certificate --certificate-authority-arn $certificate_authority_arn --certificate-arn $certificate_arn "$@"
}