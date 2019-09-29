######################################################################
#<
#
# Function:
#      = p6_aws_lightsail_operations_get()
#
#
#
#>
######################################################################
p6_aws_lightsail_operations_get() {

    p6_run_read_cmd aws lightsail get-operations "$@"
}