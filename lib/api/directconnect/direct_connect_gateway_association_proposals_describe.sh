######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_direct_connect_gateway_association_proposals_describe()
#
#
#
#>
######################################################################
p6_aws_directconnect_direct_connect_gateway_association_proposals_describe() {

    p6_run_read_cmd aws directconnect describe-direct-connect-gateway-association-proposals "$@"
}