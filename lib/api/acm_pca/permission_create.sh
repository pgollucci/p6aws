######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_permission_create(certificate_authority_arn, principal, actions)
#
#  Args:
#	certificate_authority_arn - 
#	principal - 
#	actions - 
#
#>
######################################################################
p6_aws_acm_pca_permission_create() {
    local certificate_authority_arn="$1"
    local principal="$2"
    local actions="$3"
    shift 3

    p6_run_write_cmd aws acm-pca create-permission --certificate-authority-arn $certificate_authority_arn --principal $principal --actions $actions "$@"
}