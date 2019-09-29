######################################################################
#<
#
# Function:
#      = p6_aws_elb_load_balancer_from_subnets_detach(load_balancer_name, subnets)
#
# Arg(s):
#    load_balancer_name - 
#    subnets - 
#
#
#>
######################################################################
p6_aws_elb_load_balancer_from_subnets_detach() {
    local load_balancer_name="$1"
    local subnets="$2"
    shift 2

    p6_run_write_cmd aws elb detach-load-balancer-from-subnets --load-balancer-name $load_balancer_name --subnets $subnets "$@"
}