######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_domain_names_get()
#
#
#
#>
######################################################################
p6_aws_apigateway_domain_names_get() {

    p6_run_read_cmd aws apigateway get-domain-names "$@"
}