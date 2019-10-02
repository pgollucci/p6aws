######################################################################
#<
#
# Function:
#	p6_aws_route53_traffic_policy_instance_count_get()
#
#>
######################################################################
p6_aws_route53_traffic_policy_instance_count_get() {

    p6_run_read_cmd aws route53 get-traffic-policy-instance-count "$@"
}