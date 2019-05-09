p6_aws_directconnect_direct_connect_gateway_association_proposal_create() {
    local direct_connect_gateway_id="$1"
    local direct_connect_gateway_owner_account="$2"
    local gateway_id="$3"
    shift 3

    p6_run_write_cmd aws directconnect create-direct-connect-gateway-association-proposal --direct-connect-gateway-id $direct_connect_gateway_id --direct-connect-gateway-owner-account $direct_connect_gateway_owner_account --gateway-id $gateway_id "$@"
}
