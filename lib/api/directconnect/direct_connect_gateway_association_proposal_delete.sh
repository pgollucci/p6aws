p6_aws_directconnect_direct_connect_gateway_association_proposal_delete() {
    local proposal_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect delete-direct-connect-gateway-association-proposal --proposal-id $proposal_id "$@"
}
