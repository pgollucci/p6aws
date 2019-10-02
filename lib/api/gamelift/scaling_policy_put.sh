######################################################################
#<
#
# Function:
#	p6_aws_gamelift_scaling_policy_put(name, fleet_id, metric_name)
#
#  Args:
#	name - 
#	fleet_id - 
#	metric_name - 
#
#>
######################################################################
p6_aws_gamelift_scaling_policy_put() {
    local name="$1"
    local fleet_id="$2"
    local metric_name="$3"
    shift 3

    p6_run_write_cmd aws gamelift put-scaling-policy --name $name --fleet-id $fleet_id --metric-name $metric_name "$@"
}