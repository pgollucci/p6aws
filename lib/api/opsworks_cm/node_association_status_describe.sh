p6_aws_opsworks_cm_node_association_status_describe() {
    local node_association_status_token="$1"
    local server_name="$2"
    shift 2

    p6_run_read_cmd aws opsworks-cm describe-node-association-status --node-association-status-token $node_association_status_token --server-name $server_name "$@"
}
