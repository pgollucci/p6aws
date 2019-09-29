######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_load_balancers_attach(auto_scaling_group_name, load_balancer_names)
#
# Arg(s):
#    auto_scaling_group_name - 
#    load_balancer_names - 
#
#
#>
######################################################################
p6_aws_autoscaling_load_balancers_attach() {
    local auto_scaling_group_name="$1"
    local load_balancer_names="$2"
    shift 2

    p6_run_write_cmd aws autoscaling attach-load-balancers --auto-scaling-group-name $auto_scaling_group_name --load-balancer-names $load_balancer_names "$@"
}