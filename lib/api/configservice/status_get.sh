######################################################################
#<
#
# Function:
#	p6_aws_configservice_status_get()
#
#>
######################################################################
p6_aws_configservice_status_get() {

    p6_run_read_cmd aws configservice get-status "$@"
}