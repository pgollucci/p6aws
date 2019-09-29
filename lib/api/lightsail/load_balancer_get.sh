######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_load_balancer_get(load_balancer_name)
#
# Arg(s):
#    load_balancer_name - 
#
#
#>
######################################################################
p6_aws_lightsail_load_balancer_get() {
    local load_balancer_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-load-balancer --load-balancer-name $load_balancer_name "$@"
}