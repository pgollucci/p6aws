######################################################################
#<
#
# Function:
#	p6_aws_route53_traffic_policy_get(id, traffic_policy_version)
#
#  Args:
#	id - 
#	traffic_policy_version - 
#
#>
######################################################################
p6_aws_route53_traffic_policy_get() {
    local id="$1"
    local traffic_policy_version="$2"
    shift 2

    p6_run_read_cmd aws route53 get-traffic-policy --id $id --traffic-policy-version $traffic_policy_version "$@"
}