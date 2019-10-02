######################################################################
#<
#
# Function:
#	p6_aws_ec2_snapshot_create(volume_id)
#
#  Args:
#	volume_id - 
#
#>
######################################################################
p6_aws_ec2_snapshot_create() {
    local volume_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-snapshot --volume-id $volume_id "$@"
}