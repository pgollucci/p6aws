######################################################################
#<
#
# Function:
#      = p6_aws_ec2_volume_delete(volume_id)
#
# Arg(s):
#    volume_id - 
#
#
#>
######################################################################
p6_aws_ec2_volume_delete() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-volume --volume-id $volume_id "$@"
}