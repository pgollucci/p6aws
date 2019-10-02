######################################################################
#<
#
# Function:
#	p6_aws_gamelift_instance_access_get(fleet_id, instance_id)
#
#  Args:
#	fleet_id - 
#	instance_id - 
#
#>
######################################################################
p6_aws_gamelift_instance_access_get() {
    local fleet_id="$1"
    local instance_id="$2"
    shift 2

    p6_run_read_cmd aws gamelift get-instance-access --fleet-id $fleet_id --instance-id $instance_id "$@"
}