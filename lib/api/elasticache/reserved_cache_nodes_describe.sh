######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_reserved_cache_nodes_describe()
#
#
#
#>
######################################################################
p6_aws_elasticache_reserved_cache_nodes_describe() {

    p6_run_read_cmd aws elasticache describe-reserved-cache-nodes "$@"
}