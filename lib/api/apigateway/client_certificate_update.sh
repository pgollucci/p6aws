######################################################################
#<
#
# Function:
#	p6_aws_apigateway_client_certificate_update(client_certificate_id)
#
#  Args:
#	client_certificate_id - 
#
#>
######################################################################
p6_aws_apigateway_client_certificate_update() {
    local client_certificate_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway update-client-certificate --client-certificate-id $client_certificate_id "$@"
}