######################################################################
#<
#
# Function:
#      = p6_aws_elasticache_snapshot_create(snapshot_name)
#
# Arg(s):
#    snapshot_name - 
#
#
#>
######################################################################
p6_aws_elasticache_snapshot_create() {
    local snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws elasticache create-snapshot --snapshot-name $snapshot_name "$@"
}