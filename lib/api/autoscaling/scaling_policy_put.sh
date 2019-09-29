######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_scaling_policy_put(auto_scaling_group_name, policy_name)
#
# Arg(s):
#    auto_scaling_group_name - 
#    policy_name - 
#
#
#>
######################################################################
p6_aws_autoscaling_scaling_policy_put() {
    local auto_scaling_group_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_write_cmd aws autoscaling put-scaling-policy --auto-scaling-group-name $auto_scaling_group_name --policy-name $policy_name "$@"
}