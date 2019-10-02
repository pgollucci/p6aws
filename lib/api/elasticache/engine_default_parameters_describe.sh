######################################################################
#<
#
# Function:
#	p6_aws_elasticache_engine_default_parameters_describe(cache_parameter_group_family)
#
#  Args:
#	cache_parameter_group_family - 
#
#>
######################################################################
p6_aws_elasticache_engine_default_parameters_describe() {
    local cache_parameter_group_family="$1"
    shift 1

    p6_run_read_cmd aws elasticache describe-engine-default-parameters --cache-parameter-group-family $cache_parameter_group_family "$@"
}