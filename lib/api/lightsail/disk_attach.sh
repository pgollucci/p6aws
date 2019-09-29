######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_disk_attach(disk_name, instance_name, disk_path)
#
# Arg(s):
#    disk_name - 
#    instance_name - 
#    disk_path - 
#
#
#>
######################################################################
p6_aws_lightsail_disk_attach() {
    local disk_name="$1"
    local instance_name="$2"
    local disk_path="$3"
    shift 3

    p6_run_write_cmd aws lightsail attach-disk --disk-name $disk_name --instance-name $instance_name --disk-path $disk_path "$@"
}