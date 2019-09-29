######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_direct_connect_gateway_create(direct_connect_gateway_name)
#
# Arg(s):
#    direct_connect_gateway_name - 
#
#
#>
######################################################################
p6_aws_directconnect_direct_connect_gateway_create() {
    local direct_connect_gateway_name="$1"
    shift 1

    p6_run_write_cmd aws directconnect create-direct-connect-gateway --direct-connect-gateway-name $direct_connect_gateway_name "$@"
}