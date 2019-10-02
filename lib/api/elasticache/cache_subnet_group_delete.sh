######################################################################
#<
#
# Function:
#	p6_aws_elasticache_cache_subnet_group_delete(cache_subnet_group_name)
#
#  Args:
#	cache_subnet_group_name - 
#
#>
######################################################################
p6_aws_elasticache_cache_subnet_group_delete() {
    local cache_subnet_group_name="$1"
    shift 1

    p6_run_write_cmd aws elasticache delete-cache-subnet-group --cache-subnet-group-name $cache_subnet_group_name "$@"
}