######################################################################
#<
#
# Function:
#      = p6_aws_devicefarm_offering_status_get()
#
#
#
#>
######################################################################
p6_aws_devicefarm_offering_status_get() {

    p6_run_read_cmd aws devicefarm get-offering-status "$@"
}