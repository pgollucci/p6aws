######################################################################
#<
#
# Function:
#      = p6_aws_elb_instance_health_describe(load_balancer_name)
#
# Arg(s):
#    load_balancer_name - 
#
#
#>
######################################################################
p6_aws_elb_instance_health_describe() {
    local load_balancer_name="$1"
    shift 1

    p6_run_read_cmd aws elb describe-instance-health --load-balancer-name $load_balancer_name "$@"
}