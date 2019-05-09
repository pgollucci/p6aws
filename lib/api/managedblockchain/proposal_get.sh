p6_aws_managedblockchain_proposal_get() {
    local network_id="$1"
    local proposal_id="$2"
    shift 2

    p6_run_read_cmd aws managedblockchain get-proposal --network-id $network_id --proposal-id $proposal_id "$@"
}
