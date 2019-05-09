p6_aws_elb_svc_list() {

    p6_aws_elb_load_balancers_describe \
	--output text \
	--query "'LoadBalancerDescriptions[].[Scheme, LoadBalancerName, join(',', Subnets[]), join(',', AvailabilityZones[]), join(',', SecurityGroups[]), join(',',Instances[].InstanceId)]'"
}
