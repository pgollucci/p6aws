######################################################################
#<
#
# Function:
#	p6_aws_elasticache_cache_parameter_group_modify(cache_parameter_group_name, parameter_name_values)
#
#  Args:
#	cache_parameter_group_name - 
#	parameter_name_values - 
#
#>
######################################################################
p6_aws_elasticache_cache_parameter_group_modify() {
    local cache_parameter_group_name="$1"
    local parameter_name_values="$2"
    shift 2

    p6_run_write_cmd aws elasticache modify-cache-parameter-group --cache-parameter-group-name $cache_parameter_group_name --parameter-name-values $parameter_name_values "$@"
}