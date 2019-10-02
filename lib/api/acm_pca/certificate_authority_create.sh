######################################################################
#<
#
# Function:
#	p6_aws_acm_pca_certificate_authority_create(certificate_authority_configuration, certificate_authority_type)
#
#  Args:
#	certificate_authority_configuration - 
#	certificate_authority_type - 
#
#>
######################################################################
p6_aws_acm_pca_certificate_authority_create() {
    local certificate_authority_configuration="$1"
    local certificate_authority_type="$2"
    shift 2

    p6_run_write_cmd aws acm-pca create-certificate-authority --certificate-authority-configuration $certificate_authority_configuration --certificate-authority-type $certificate_authority_type "$@"
}