######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_disk_from_snapshot_create(disk_name, disk_snapshot_name, availability_zone, size_in_gb)
#
# Arg(s):
#    disk_name - 
#    disk_snapshot_name - 
#    availability_zone - 
#    size_in_gb - 
#
#
#>
######################################################################
p6_aws_lightsail_disk_from_snapshot_create() {
    local disk_name="$1"
    local disk_snapshot_name="$2"
    local availability_zone="$3"
    local size_in_gb="$4"
    shift 4

    p6_run_write_cmd aws lightsail create-disk-from-snapshot --disk-name $disk_name --disk-snapshot-name $disk_snapshot_name --availability-zone $availability_zone --size-in-gb $size_in_gb "$@"
}