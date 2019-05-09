p6_aws_elasticache_allowed_node_type_modifications_list() {

    p6_run_read_cmd aws elasticache list-allowed-node-type-modifications "$@"
}
