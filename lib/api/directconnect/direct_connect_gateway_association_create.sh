######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_direct_connect_gateway_association_create(direct_connect_gateway_id)
#
# Arg(s):
#    direct_connect_gateway_id - 
#
#
#>
######################################################################
p6_aws_directconnect_direct_connect_gateway_association_create() {
    local direct_connect_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect create-direct-connect-gateway-association --direct-connect-gateway-id $direct_connect_gateway_id "$@"
}