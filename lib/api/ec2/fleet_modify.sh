######################################################################
#<
#
# Function:
#	p6_aws_ec2_fleet_modify(fleet_id, target_capacity_specification)
#
#  Args:
#	fleet_id - 
#	target_capacity_specification - 
#
#>
######################################################################
p6_aws_ec2_fleet_modify() {
    local fleet_id="$1"
    local target_capacity_specification="$2"
    shift 2

    p6_run_write_cmd aws ec2 modify-fleet --fleet-id $fleet_id --target-capacity-specification $target_capacity_specification "$@"
}