######################################################################
#<
#
# Function:
#      = p6_aws_acm_pca_certificate_authority_untag(certificate_authority_arn, tags)
#
# Arg(s):
#    certificate_authority_arn - 
#    tags - 
#
#
#>
######################################################################
p6_aws_acm_pca_certificate_authority_untag() {
    local certificate_authority_arn="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws acm-pca untag-certificate-authority --certificate-authority-arn $certificate_authority_arn --tags $tags "$@"
}