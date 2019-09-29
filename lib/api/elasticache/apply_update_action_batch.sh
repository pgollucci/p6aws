######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_apply_update_action_batch(replication_group_ids, service_update_name)
#
# Arg(s):
#    replication_group_ids - 
#    service_update_name - 
#
#
#>
######################################################################
p6_aws_elasticache_apply_update_action_batch() {
    local replication_group_ids="$1"
    local service_update_name="$2"
    shift 2

    p6_run_write_cmd aws elasticache batch-apply-update-action --replication-group-ids $replication_group_ids --service-update-name $service_update_name "$@"
}