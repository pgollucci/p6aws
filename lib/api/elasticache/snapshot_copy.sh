######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_snapshot_copy(source_snapshot_name, target_snapshot_name)
#
# Arg(s):
#    source_snapshot_name - 
#    target_snapshot_name - 
#
#
#>
######################################################################
p6_aws_elasticache_snapshot_copy() {
    local source_snapshot_name="$1"
    local target_snapshot_name="$2"
    shift 2

    p6_run_write_cmd aws elasticache copy-snapshot --source-snapshot-name $source_snapshot_name --target-snapshot-name $target_snapshot_name "$@"
}