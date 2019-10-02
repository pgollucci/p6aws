######################################################################
#<
#
# Function:
#	p6_aws_lightsail_disk_get(disk_name)
#
#  Args:
#	disk_name - 
#
#>
######################################################################
p6_aws_lightsail_disk_get() {
    local disk_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-disk --disk-name $disk_name "$@"
}