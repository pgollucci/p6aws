######################################################################
#<
#
# Function:
#      = p6_aws_ec2_volume_io_enable(volume_id)
#
# Arg(s):
#    volume_id - 
#
#
#>
######################################################################
p6_aws_ec2_volume_io_enable() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 enable-volume-io --volume-id $volume_id "$@"
}