p6_aws_redshift_reserved_node_exchange_offerings_get() {
    local reserved_node_id="$1"
    shift 1

    p6_log_and_run aws redshift get-reserved-node-exchange-offerings --reserved-node-id $reserved_node_id "$@"
}
