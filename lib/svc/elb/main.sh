p6_aws_elb_svc_list() {

    p6_aws_elb_load_balancers_describe \
	--output text \
	--query "'LoadBalancerDescriptions[].[Scheme, LoadBalancerName, join(\`,\`, Subnets[]), join(\`,\`, AvailabilityZones[]), join(\`,\`, SecurityGroups[]), join(\`,\`,Instances[].InstanceId)]'"
}

p6_aws_elb_svc_create() {
    local elb_name="$1"
    local sg_ids="$2"
    local subnet_ids="$3"

    p6_aws_elb_load_balancer_create \
	--load-balancer-name "$elb_name" \
	--security-groups "$sg_ids" \
	--subnets "$subnet_ids" \
	--listeners "'Protocol=http,LoadBalancerPort=80,InstanceProtocol=http,InstancePort=80'"

    # tags
}
