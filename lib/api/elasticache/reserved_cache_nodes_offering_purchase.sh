######################################################################
#<
#
# Function:
#	p6_aws_elasticache_reserved_cache_nodes_offering_purchase(reserved_cache_nodes_offering_id)
#
#  Args:
#	reserved_cache_nodes_offering_id - 
#
#>
######################################################################
p6_aws_elasticache_reserved_cache_nodes_offering_purchase() {
    local reserved_cache_nodes_offering_id="$1"
    shift 1

    p6_run_write_cmd aws elasticache purchase-reserved-cache-nodes-offering --reserved-cache-nodes-offering-id $reserved_cache_nodes_offering_id "$@"
}