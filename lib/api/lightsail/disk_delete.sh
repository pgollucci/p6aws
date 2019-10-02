######################################################################
#<
#
# Function:
#	p6_aws_lightsail_disk_delete(disk_name)
#
#  Args:
#	disk_name - 
#
#>
######################################################################
p6_aws_lightsail_disk_delete() {
    local disk_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail delete-disk --disk-name $disk_name "$@"
}