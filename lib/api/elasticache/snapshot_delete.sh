######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_snapshot_delete(snapshot_name)
#
# Arg(s):
#    snapshot_name - 
#
#
#>
######################################################################
p6_aws_elasticache_snapshot_delete() {
    local snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws elasticache delete-snapshot --snapshot-name $snapshot_name "$@"
}