p6_aws_elasticache_cache_security_group_delete() {
    local cache_security_group_name="$1"
    shift 1

    p6_log_or_run aws elasticache delete-cache-security-group --cache-security-group-name $cache_security_group_name "$@"
}
