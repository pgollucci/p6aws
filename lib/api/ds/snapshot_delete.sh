######################################################################
#<
#
# Function:
#	p6_aws_ds_snapshot_delete(snapshot_id)
#
#  Args:
#	snapshot_id - 
#
#>
######################################################################
p6_aws_ds_snapshot_delete() {
    local snapshot_id="$1"
    shift 1

    p6_run_write_cmd aws ds delete-snapshot --snapshot-id $snapshot_id "$@"
}