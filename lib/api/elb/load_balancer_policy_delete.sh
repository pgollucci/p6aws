######################################################################
#<
#
# Function:
#      = p6_aws_elb_load_balancer_policy_delete(load_balancer_name, policy_name)
#
# Arg(s):
#    load_balancer_name - 
#    policy_name - 
#
#
#>
######################################################################
p6_aws_elb_load_balancer_policy_delete() {
    local load_balancer_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_write_cmd aws elb delete-load-balancer-policy --load-balancer-name $load_balancer_name --policy-name $policy_name "$@"
}