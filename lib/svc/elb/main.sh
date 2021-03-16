######################################################################
#<
#
# Function: p6_aws_svc_elb_list()
#
#>
######################################################################
p6_aws_svc_elb_list() {

	local tag_name=$(p6_aws_cli_jq_tag_name_get)

	p6_aws_cli_cmd elb describe-load-balancers \
		--output text \
		--query "'LoadBalancerDescriptions[].[Scheme, LoadBalancerName, join(\`,\`, Subnets[]), join(\`,\`, AvailabilityZones[]), join(\`,\`, SecurityGroups[]), join(\`,\`,Instances[].InstanceId), $tag_name]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_elb_listeners_list(load_balancer_name)
#
#  Args:
#	load_balancer_name -
#
#>
######################################################################
p6_aws_svc_ec2_elb_listeners_list() {
	local load_balancer_name="$1"

	elb_listener_show.pl --load-balancer-name $load_balancer_name
}
