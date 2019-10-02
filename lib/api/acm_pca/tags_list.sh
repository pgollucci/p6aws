######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_tags_list(certificate_authority_arn)
#
#  Args:
#	certificate_authority_arn - 
#
#>
######################################################################
p6_aws_acm_pca_tags_list() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_read_cmd aws acm-pca list-tags --certificate-authority-arn $certificate_authority_arn "$@"
}