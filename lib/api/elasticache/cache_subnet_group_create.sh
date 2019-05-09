p6_aws_elasticache_cache_subnet_group_create() {
    local cache_subnet_group_name="$1"
    local cache_subnet_group_description="$2"
    local subnet_ids="$3"
    shift 3

    p6_run_write_cmd aws elasticache create-cache-subnet-group --cache-subnet-group-name $cache_subnet_group_name --cache-subnet-group-description $cache_subnet_group_description --subnet-ids $subnet_ids "$@"
}
