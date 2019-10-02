######################################################################
#<
#
# Function:
#	p6_aws_elasticache_replication_group_modify(replication_group_id)
#
#  Args:
#	replication_group_id - 
#
#>
######################################################################
p6_aws_elasticache_replication_group_modify() {
    local replication_group_id="$1"
    shift 1

    p6_run_write_cmd aws elasticache modify-replication-group --replication-group-id $replication_group_id "$@"
}