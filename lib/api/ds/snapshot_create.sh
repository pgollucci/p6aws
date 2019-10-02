######################################################################
#<
#
# Function:
#	p6_aws_ds_snapshot_create(directory_id)
#
#  Args:
#	directory_id - 
#
#>
######################################################################
p6_aws_ds_snapshot_create() {
    local directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds create-snapshot --directory-id $directory_id "$@"
}