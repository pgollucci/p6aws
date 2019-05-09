p6_aws_elasticache_cache_parameter_group_create() {
    local cache_parameter_group_name="$1"
    local cache_parameter_group_family="$2"
    local description="$3"
    shift 3

    p6_log_or_run aws elasticache create-cache-parameter-group --cache-parameter-group-name $cache_parameter_group_name --cache-parameter-group-family $cache_parameter_group_family --description $description "$@"
}
