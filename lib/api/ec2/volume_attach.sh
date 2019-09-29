######################################################################
#<
#
# Function:
#      = p6_aws_ec2_volume_attach(device, instance_id, volume_id)
#
# Arg(s):
#    device - 
#    instance_id - 
#    volume_id - 
#
#
#>
######################################################################
p6_aws_ec2_volume_attach() {
    local device="$1"
    local instance_id="$2"
    local volume_id="$3"
    shift 3

    p6_run_write_cmd aws ec2 attach-volume --device $device --instance-id $instance_id --volume-id $volume_id "$@"
}