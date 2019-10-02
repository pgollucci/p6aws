######################################################################
#<
#
# Function:
#	p6_aws_elasticache_cache_security_group_delete(cache_security_group_name)
#
#  Args:
#	cache_security_group_name - 
#
#>
######################################################################
p6_aws_elasticache_cache_security_group_delete() {
    local cache_security_group_name="$1"
    shift 1

    p6_run_write_cmd aws elasticache delete-cache-security-group --cache-security-group-name $cache_security_group_name "$@"
}