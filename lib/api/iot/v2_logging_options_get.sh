######################################################################
#<
#
# Function:
#	p6_aws_iot_v2_logging_options_get()
#
#>
######################################################################
p6_aws_iot_v2_logging_options_get() {

    p6_run_read_cmd aws iot get-v2-logging-options "$@"
}