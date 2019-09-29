######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_direct_connect_gateway_association_proposal_accept(direct_connect_gateway_id, proposal_id, associated_gateway_owner_account)
#
# Arg(s):
#    direct_connect_gateway_id - 
#    proposal_id - 
#    associated_gateway_owner_account - 
#
#
#>
######################################################################
p6_aws_directconnect_direct_connect_gateway_association_proposal_accept() {
    local direct_connect_gateway_id="$1"
    local proposal_id="$2"
    local associated_gateway_owner_account="$3"
    shift 3

    p6_run_write_cmd aws directconnect accept-direct-connect-gateway-association-proposal --direct-connect-gateway-id $direct_connect_gateway_id --proposal-id $proposal_id --associated-gateway-owner-account $associated_gateway_owner_account "$@"
}