######################################################################
#<
#
# Function:
#	p6_aws_lightsail_snapshot_export(source_snapshot_name)
#
#  Args:
#	source_snapshot_name - 
#
#>
######################################################################
p6_aws_lightsail_snapshot_export() {
    local source_snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail export-snapshot --source-snapshot-name $source_snapshot_name "$@"
}