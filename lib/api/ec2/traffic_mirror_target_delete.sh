######################################################################
#<
#
# Function:
#	p6_aws_ec2_traffic_mirror_target_delete(traffic_mirror_target_id)
#
#  Args:
#	traffic_mirror_target_id - 
#
#>
######################################################################
p6_aws_ec2_traffic_mirror_target_delete() {
    local traffic_mirror_target_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 delete-traffic-mirror-target --traffic-mirror-target-id $traffic_mirror_target_id "$@"
}