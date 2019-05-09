p6_aws_elasticache_cache_parameter_group_delete() {
    local cache_parameter_group_name="$1"
    shift 1

    p6_log_or_run aws elasticache delete-cache-parameter-group --cache-parameter-group-name $cache_parameter_group_name "$@"
}
