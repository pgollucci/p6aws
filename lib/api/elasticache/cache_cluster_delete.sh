p6_aws_elasticache_cache_cluster_delete() {
    local cache_cluster_id="$1"
    shift 1

    p6_run_write_cmd aws elasticache delete-cache-cluster --cache-cluster-id $cache_cluster_id "$@"
}
