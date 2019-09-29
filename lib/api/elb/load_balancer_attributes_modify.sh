######################################################################
#<
#
# Function:
#      = p6_aws_elb_load_balancer_attributes_modify(load_balancer_name, load_balancer_attributes)
#
# Arg(s):
#    load_balancer_name - 
#    load_balancer_attributes - 
#
#
#>
######################################################################
p6_aws_elb_load_balancer_attributes_modify() {
    local load_balancer_name="$1"
    local load_balancer_attributes="$2"
    shift 2

    p6_run_write_cmd aws elb modify-load-balancer-attributes --load-balancer-name $load_balancer_name --load-balancer-attributes $load_balancer_attributes "$@"
}