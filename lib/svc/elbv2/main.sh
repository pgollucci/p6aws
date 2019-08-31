p6_aws_alb_svc_list() {
    #   local vpc_id="${1:-$AWS_VPC}"
    #   --filters "Name=vpc-id,Values=$vpc_id"

    p6_aws_elbv2_load_balancers_describe \
	--output text \
	--query "'LoadBalancers[].[State.Code, Scheme, Type, join(\`,\`, AvailabilityZones[].SubnetId), join(\`,\`, SecurityGroups[]), DNSName]'"
}

p6_aws_alb_svc_create() {
    local alb_name="$1"
    local subnet_type="${2:-Public}"
    local vpc_id="${3:-$AWS_VPC}"

    local subnet_ids=$(p6_aws_ec2_svc_subnet_ids_get "$subnet_type" "$vpc_id" | xargs)

    p6_aws_elbv2_load_balancer_create "$alb_name" "$subnet_ids"
}

p6_aws_alb_svc_listener_create() {
    local alb_arn="$1"
    local target_group_arn="$2"

    local default_action_type=forward
    local protocol=HTTP
    local port=80

    p6_aws_elbv2_listener_create \
	"$alb_arn" \
	--protocol $protocol \
	--port $port \
	--default-actions Type=$default_action_type,TargetGroupArn=$target_group_arn
}

p6_aws_alb_svc_target_group_create() {
    local tg_name="$1"
    local vpc_id="${2:-AWS_VPC}"

    if [ -n "$vpc_id" ]; then
	vpc_id="--vpc-id $vpc_id"
    else
	# lambda
	true
    fi

    local protocol=HTTP
    local port=80

    p6_aws_elbv2_target_group_create \
	"$name" \
	$vpc_id \
	--protocol $protocol \
	--port $port
}
