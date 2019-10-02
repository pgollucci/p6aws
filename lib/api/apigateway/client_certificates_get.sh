######################################################################
#<
#
# Function:
#	p6_aws_apigateway_client_certificates_get()
#
#>
######################################################################
p6_aws_apigateway_client_certificates_get() {

    p6_run_read_cmd aws apigateway get-client-certificates "$@"
}