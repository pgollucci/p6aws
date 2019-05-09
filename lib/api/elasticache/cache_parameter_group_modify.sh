p6_aws_elasticache_cache_parameter_group_modify() {
    local cache_parameter_group_name="$1"
    local parameter_name_values="$2"
    shift 2

    p6_log_or_run aws elasticache modify-cache-parameter-group --cache-parameter-group-name $cache_parameter_group_name --parameter-name-values $parameter_name_values "$@"
}
