######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_cache_parameter_group_reset(cache_parameter_group_name)
#
# Arg(s):
#    cache_parameter_group_name - 
#
#
#>
######################################################################
p6_aws_elasticache_cache_parameter_group_reset() {
    local cache_parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws elasticache reset-cache-parameter-group --cache-parameter-group-name $cache_parameter_group_name "$@"
}