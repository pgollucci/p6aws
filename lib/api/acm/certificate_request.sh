######################################################################
#<
#
# Function:
#	p6_aws_acm_certificate_request(domain_name)
#
#  Args:
#	domain_name - 
#
#>
######################################################################
p6_aws_acm_certificate_request() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws acm request-certificate --domain-name $domain_name "$@"
}