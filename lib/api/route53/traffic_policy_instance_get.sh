######################################################################
#<
#
# Function:
#	p6_aws_route53_traffic_policy_instance_get(id)
#
#  Args:
#	id - 
#
#>
######################################################################
p6_aws_route53_traffic_policy_instance_get() {
    local id="$1"
    shift 1

    p6_run_read_cmd aws route53 get-traffic-policy-instance --id $id "$@"
}