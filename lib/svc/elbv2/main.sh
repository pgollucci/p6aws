######################################################################
#<
#
# Function: p6_aws_svc_alb_list()
#
#>
######################################################################
p6_aws_svc_alb_list() {
    #   local vpc_id="${1:-$AWS_VPC_ID}"
    #   --filters "Name=vpc-id,Values=$vpc_id"

    p6_aws_cli_cmd elbv2 describe-load-balancers \
        --output text \
        --query "'LoadBalancers[].[State.Code, Scheme, Type, join(\`,\`, AvailabilityZones[].SubnetId), join(\`,\`, SecurityGroups[]), DNSName, LoadBalancerArn]'"
}

######################################################################
#<
#
# Function: p6_aws_svc_alb_listeners_list(load_balancer_name)
#
#  Args:
#	load_balancer_name -
#
#>
######################################################################
p6_aws_svc_alb_listeners_list() {
    local load_balancer_name="$1"

    alb_listener_show.pl --load-balancer-name $load_balancer_name
}
