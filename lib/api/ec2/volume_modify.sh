######################################################################
#<
#
# Function:
#	p6_aws_ec2_volume_modify(volume_id)
#
#  Args:
#	volume_id - 
#
#>
######################################################################
p6_aws_ec2_volume_modify() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-volume --volume-id $volume_id "$@"
}