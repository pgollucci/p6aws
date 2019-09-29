######################################################################
#<
#
# Function:
#      = p6_aws_acm_pca_permission_delete(certificate_authority_arn, principal)
#
# Arg(s):
#    certificate_authority_arn - 
#    principal - 
#
#
#>
######################################################################
p6_aws_acm_pca_permission_delete() {
    local certificate_authority_arn="$1"
    local principal="$2"
    shift 2

    p6_run_write_cmd aws acm-pca delete-permission --certificate-authority-arn $certificate_authority_arn --principal $principal "$@"
}