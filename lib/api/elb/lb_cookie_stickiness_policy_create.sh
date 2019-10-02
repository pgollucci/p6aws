######################################################################
#<
#
# Function:
#	p6_aws_elb_lb_cookie_stickiness_policy_create(load_balancer_name, policy_name)
#
#  Args:
#	load_balancer_name - 
#	policy_name - 
#
#>
######################################################################
p6_aws_elb_lb_cookie_stickiness_policy_create() {
    local load_balancer_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_write_cmd aws elb create-lb-cookie-stickiness-policy --load-balancer-name $load_balancer_name --policy-name $policy_name "$@"
}