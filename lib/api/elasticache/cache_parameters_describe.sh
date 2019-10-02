######################################################################
#<
#
# Function:
#	p6_aws_elasticache_cache_parameters_describe(cache_parameter_group_name)
#
#  Args:
#	cache_parameter_group_name - 
#
#>
######################################################################
p6_aws_elasticache_cache_parameters_describe() {
    local cache_parameter_group_name="$1"
    shift 1

    p6_run_read_cmd aws elasticache describe-cache-parameters --cache-parameter-group-name $cache_parameter_group_name "$@"
}