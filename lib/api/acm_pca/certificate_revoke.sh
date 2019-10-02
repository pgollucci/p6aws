######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_certificate_revoke(certificate_authority_arn, certificate_serial, revocation_reason)
#
#  Args:
#	certificate_authority_arn - 
#	certificate_serial - 
#	revocation_reason - 
#
#>
######################################################################
p6_aws_acm_pca_certificate_revoke() {
    local certificate_authority_arn="$1"
    local certificate_serial="$2"
    local revocation_reason="$3"
    shift 3

    p6_run_write_cmd aws acm-pca revoke-certificate --certificate-authority-arn $certificate_authority_arn --certificate-serial $certificate_serial --revocation-reason $revocation_reason "$@"
}