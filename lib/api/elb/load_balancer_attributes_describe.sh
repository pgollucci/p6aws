######################################################################
#<
#
# Function:
#      = p6_aws_elb_load_balancer_attributes_describe(load_balancer_name)
#
# Arg(s):
#    load_balancer_name - 
#
#
#>
######################################################################
p6_aws_elb_load_balancer_attributes_describe() {
    local load_balancer_name="$1"
    shift 1

    p6_run_read_cmd aws elb describe-load-balancer-attributes --load-balancer-name $load_balancer_name "$@"
}