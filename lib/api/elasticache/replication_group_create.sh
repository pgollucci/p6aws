######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_replication_group_create(replication_group_id, replication_group_description)
#
# Arg(s):
#    replication_group_id - 
#    replication_group_description - 
#
#
#>
######################################################################
p6_aws_elasticache_replication_group_create() {
    local replication_group_id="$1"
    local replication_group_description="$2"
    shift 2

    p6_run_write_cmd aws elasticache create-replication-group --replication-group-id $replication_group_id --replication-group-description $replication_group_description "$@"
}