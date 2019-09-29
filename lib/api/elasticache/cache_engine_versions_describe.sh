######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_cache_engine_versions_describe()
#
#
#
#>
######################################################################
p6_aws_elasticache_cache_engine_versions_describe() {

    p6_run_read_cmd aws elasticache describe-cache-engine-versions "$@"
}