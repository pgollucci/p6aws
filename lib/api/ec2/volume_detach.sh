######################################################################
#<
#
# Function:
#      = p6_aws_ec2_volume_detach(volume_id)
#
# Arg(s):
#    volume_id - 
#
#
#>
######################################################################
p6_aws_ec2_volume_detach() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 detach-volume --volume-id $volume_id "$@"
}