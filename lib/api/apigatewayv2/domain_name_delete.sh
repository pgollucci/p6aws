######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_domain_name_delete(domain_name)
#
#  Args:
#	domain_name - 
#
#>
######################################################################
p6_aws_apigatewayv2_domain_name_delete() {
    local domain_name="$1"
    shift 1

    p6_run_write_cmd aws apigatewayv2 delete-domain-name --domain-name $domain_name "$@"
}