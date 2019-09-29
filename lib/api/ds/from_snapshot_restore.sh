######################################################################
#<
#
# Function:
#      = p6_aws_ds_from_snapshot_restore(snapshot_id)
#
# Arg(s):
#    snapshot_id - 
#
#
#>
######################################################################
p6_aws_ds_from_snapshot_restore() {
    local snapshot_id="$1"
    shift 1

    p6_run_write_cmd aws ds restore-from-snapshot --snapshot-id $snapshot_id "$@"
}