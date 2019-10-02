######################################################################
#<
#
# Function:
#	p6_aws_elasticache_cache_cluster_modify(cache_cluster_id)
#
#  Args:
#	cache_cluster_id - 
#
#>
######################################################################
p6_aws_elasticache_cache_cluster_modify() {
    local cache_cluster_id="$1"
    shift 1

    p6_run_write_cmd aws elasticache modify-cache-cluster --cache-cluster-id $cache_cluster_id "$@"
}