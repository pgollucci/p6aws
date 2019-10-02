######################################################################
#<
#
# Function:
#	p6_aws_elb_load_balancer_create(load_balancer_name, listeners)
#
#  Args:
#	load_balancer_name - 
#	listeners - 
#
#>
######################################################################
p6_aws_elb_load_balancer_create() {
    local load_balancer_name="$1"
    local listeners="$2"
    shift 2

    p6_run_write_cmd aws elb create-load-balancer --load-balancer-name $load_balancer_name --listeners $listeners "$@"
}