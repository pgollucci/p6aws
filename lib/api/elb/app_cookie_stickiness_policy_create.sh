######################################################################
#<
#
# Function:
#	p6_aws_elb_app_cookie_stickiness_policy_create(load_balancer_name, policy_name, cookie_name)
#
#  Args:
#	load_balancer_name - 
#	policy_name - 
#	cookie_name - 
#
#>
######################################################################
p6_aws_elb_app_cookie_stickiness_policy_create() {
    local load_balancer_name="$1"
    local policy_name="$2"
    local cookie_name="$3"
    shift 3

    p6_run_write_cmd aws elb create-app-cookie-stickiness-policy --load-balancer-name $load_balancer_name --policy-name $policy_name --cookie-name $cookie_name "$@"
}