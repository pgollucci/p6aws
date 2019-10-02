######################################################################
#<
#
# Function:
#	p6_aws_gamelift_scaling_policy_delete(name, fleet_id)
#
#  Args:
#	name - 
#	fleet_id - 
#
#>
######################################################################
p6_aws_gamelift_scaling_policy_delete() {
    local name="$1"
    local fleet_id="$2"
    shift 2

    p6_run_write_cmd aws gamelift delete-scaling-policy --name $name --fleet-id $fleet_id "$@"
}