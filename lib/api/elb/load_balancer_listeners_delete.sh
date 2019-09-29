######################################################################
#<
#
# Function:
#      = p6_aws_elb_load_balancer_listeners_delete(load_balancer_name, load_balancer_ports)
#
# Arg(s):
#    load_balancer_name - 
#    load_balancer_ports - 
#
#
#>
######################################################################
p6_aws_elb_load_balancer_listeners_delete() {
    local load_balancer_name="$1"
    local load_balancer_ports="$2"
    shift 2

    p6_run_read_cmd aws elb delete-load-balancer-listeners --load-balancer-name $load_balancer_name --load-balancer-ports $load_balancer_ports "$@"
}