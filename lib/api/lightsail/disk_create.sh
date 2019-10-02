######################################################################
#<
#
# Function:
#	p6_aws_lightsail_disk_create(disk_name, availability_zone, size_in_gb)
#
#  Args:
#	disk_name - 
#	availability_zone - 
#	size_in_gb - 
#
#>
######################################################################
p6_aws_lightsail_disk_create() {
    local disk_name="$1"
    local availability_zone="$2"
    local size_in_gb="$3"
    shift 3

    p6_run_write_cmd aws lightsail create-disk --disk-name $disk_name --availability-zone $availability_zone --size-in-gb $size_in_gb "$@"
}