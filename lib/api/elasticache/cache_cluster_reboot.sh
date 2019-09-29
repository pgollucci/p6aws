######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_cache_cluster_reboot(cache_cluster_id, cache_node_ids_to_reboot)
#
# Arg(s):
#    cache_cluster_id - 
#    cache_node_ids_to_reboot - 
#
#
#>
######################################################################
p6_aws_elasticache_cache_cluster_reboot() {
    local cache_cluster_id="$1"
    local cache_node_ids_to_reboot="$2"
    shift 2

    p6_run_write_cmd aws elasticache reboot-cache-cluster --cache-cluster-id $cache_cluster_id --cache-node-ids-to-reboot $cache_node_ids_to_reboot "$@"
}