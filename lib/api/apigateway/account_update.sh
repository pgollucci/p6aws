######################################################################
#<
#
# Function:
#	p6_aws_apigateway_account_update()
#
#>
######################################################################
p6_aws_apigateway_account_update() {

    p6_run_write_cmd aws apigateway update-account "$@"
}