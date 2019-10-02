######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_domain_name_create(domain_name)
#
#  Args:
#	domain_name - 
#
#>
######################################################################
p6_aws_apigatewayv2_domain_name_create() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws apigatewayv2 create-domain-name --domain-name $domain_name "$@"
}