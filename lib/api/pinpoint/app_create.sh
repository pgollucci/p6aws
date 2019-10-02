######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_app_create()
#
#>
######################################################################
p6_aws_pinpoint_app_create() {

    p6_run_write_cmd aws pinpoint create-app "$@"
}