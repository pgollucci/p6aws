######################################################################
#<
#
# Function:
#      = p6_aws_acm_pca_permissions_list(certificate_authority_arn)
#
# Arg(s):
#    certificate_authority_arn - 
#
#
#>
######################################################################
p6_aws_acm_pca_permissions_list() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_read_cmd aws acm-pca list-permissions --certificate-authority-arn $certificate_authority_arn "$@"
}