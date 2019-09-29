######################################################################
#<
#
# Function:
#      = p6_aws_acm_pca_certificate_authority_restore(certificate_authority_arn)
#
# Arg(s):
#    certificate_authority_arn - 
#
#
#>
######################################################################
p6_aws_acm_pca_certificate_authority_restore() {
    local certificate_authority_arn="$1"
    shift 1

    p6_run_write_cmd aws acm-pca restore-certificate-authority --certificate-authority-arn $certificate_authority_arn "$@"
}