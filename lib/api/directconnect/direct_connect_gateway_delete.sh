######################################################################
#<
#
# Function:
#	p6_aws_directconnect_direct_connect_gateway_delete(direct_connect_gateway_id)
#
#  Args:
#	direct_connect_gateway_id - 
#
#>
######################################################################
p6_aws_directconnect_direct_connect_gateway_delete() {
    local direct_connect_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect delete-direct-connect-gateway --direct-connect-gateway-id $direct_connect_gateway_id "$@"
}