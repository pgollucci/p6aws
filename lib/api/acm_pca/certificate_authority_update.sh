######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_certificate_authority_update(certificate_authority_arn)
#
#  Args:
#	certificate_authority_arn - 
#
#>
######################################################################
p6_aws_acm_pca_certificate_authority_update() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_write_cmd aws acm-pca update-certificate-authority --certificate-authority-arn $certificate_authority_arn "$@"
}