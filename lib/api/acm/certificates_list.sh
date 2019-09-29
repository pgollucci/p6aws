######################################################################
#<
#
# Function:
#      = p6_aws_acm_certificates_list()
#
#
#
#>
######################################################################
p6_aws_acm_certificates_list() {

    p6_run_read_cmd aws acm list-certificates "$@"
}