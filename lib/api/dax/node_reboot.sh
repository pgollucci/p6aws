p6_aws_dax_node_reboot() {
    local cluster_name="$1"
    local node_id="$2"
    shift 2

    p6_run_write_cmd aws dax reboot-node --cluster-name $cluster_name --node-id $node_id "$@"
}
