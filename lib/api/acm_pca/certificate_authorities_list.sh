######################################################################
#<
#
# Function:
#      = p6_aws_acm_pca_certificate_authorities_list()
#
#
#
#>
######################################################################
p6_aws_acm_pca_certificate_authorities_list() {

    p6_run_read_cmd aws acm-pca list-certificate-authorities "$@"
}