######################################################################
#<
#
# Function:
#      = p6_aws_elb_load_balancer_delete(load_balancer_name)
#
# Arg(s):
#    load_balancer_name - 
#
#
#>
######################################################################
p6_aws_elb_load_balancer_delete() {
    local load_balancer_name="$1"
    shift 1

    p6_run_write_cmd aws elb delete-load-balancer --load-balancer-name $load_balancer_name "$@"
}