######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_active_names_get()
#
#
#
#>
######################################################################
p6_aws_lightsail_active_names_get() {

    p6_run_read_cmd aws lightsail get-active-names "$@"
}