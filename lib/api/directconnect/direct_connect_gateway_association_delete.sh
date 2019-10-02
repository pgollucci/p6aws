######################################################################
#<
#
# Function:
#	p6_aws_directconnect_direct_connect_gateway_association_delete()
#
#>
######################################################################
p6_aws_directconnect_direct_connect_gateway_association_delete() {

    p6_run_write_cmd aws directconnect delete-direct-connect-gateway-association "$@"
}