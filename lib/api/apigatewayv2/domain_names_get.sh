######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_domain_names_get()
#
#>
######################################################################
p6_aws_apigatewayv2_domain_names_get() {

    p6_run_read_cmd aws apigatewayv2 get-domain-names "$@"
}