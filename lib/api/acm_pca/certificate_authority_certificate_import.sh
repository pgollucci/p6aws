######################################################################
#<
#
# Function:
#      = p6_aws_acm_pca_certificate_authority_certificate_import(certificate_authority_arn, certificate)
#
# Arg(s):
#    certificate_authority_arn - 
#    certificate - 
#
#
#>
######################################################################
p6_aws_acm_pca_certificate_authority_certificate_import() {
    local certificate_authority_arn="$1"
    local certificate="$2"
    shift 2

    p6_run_write_cmd aws acm-pca import-certificate-authority-certificate --certificate-authority-arn $certificate_authority_arn --certificate $certificate "$@"
}