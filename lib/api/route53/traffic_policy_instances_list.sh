######################################################################
#<
#
# Function:
#	p6_aws_route53_traffic_policy_instances_list()
#
#>
######################################################################
p6_aws_route53_traffic_policy_instances_list() {

    p6_run_read_cmd aws route53 list-traffic-policy-instances "$@"
}