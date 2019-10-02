######################################################################
#<
#
# Function:
#	p6_aws_elb_load_balancer_policies_of_listener_set(load_balancer_name, load_balancer_port, policy_names)
#
#  Args:
#	load_balancer_name - 
#	load_balancer_port - 
#	policy_names - 
#
#>
######################################################################
p6_aws_elb_load_balancer_policies_of_listener_set() {
    local load_balancer_name="$1"
    local load_balancer_port="$2"
    local policy_names="$3"
    shift 3

    p6_run_read_cmd aws elb set-load-balancer-policies-of-listener --load-balancer-name $load_balancer_name --load-balancer-port $load_balancer_port --policy-names $policy_names "$@"
}