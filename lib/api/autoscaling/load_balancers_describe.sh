######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_load_balancers_describe(auto_scaling_group_name)
#
# Arg(s):
#    auto_scaling_group_name - 
#
#
#>
######################################################################
p6_aws_autoscaling_load_balancers_describe() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_read_cmd aws autoscaling describe-load-balancers --auto-scaling-group-name $auto_scaling_group_name "$@"
}