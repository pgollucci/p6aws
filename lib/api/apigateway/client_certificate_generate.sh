######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_client_certificate_generate()
#
#
#
#>
######################################################################
p6_aws_apigateway_client_certificate_generate() {

    p6_run_write_cmd aws apigateway generate-client-certificate "$@"
}