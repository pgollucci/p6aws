######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_load_balancers_get()
#
#
#
#>
######################################################################
p6_aws_lightsail_load_balancers_get() {

    p6_run_read_cmd aws lightsail get-load-balancers "$@"
}