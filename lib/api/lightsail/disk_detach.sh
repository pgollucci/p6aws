######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_disk_detach(disk_name)
#
# Arg(s):
#    disk_name - 
#
#
#>
######################################################################
p6_aws_lightsail_disk_detach() {
    local disk_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail detach-disk --disk-name $disk_name "$@"
}