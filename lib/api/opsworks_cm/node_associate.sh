p6_aws_opsworks_cm_node_associate() {
    local server_name="$1"
    local node_name="$2"
    local engine_attributes="$3"
    shift 3

    p6_log_or_run aws opsworks-cm associate-node --server-name $server_name --node-name $node_name --engine-attributes $engine_attributes "$@"
}
