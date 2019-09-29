######################################################################
#<
#
# Function:
#      = p6_aws_iot_logging_options_get()
#
#
#
#>
######################################################################
p6_aws_iot_logging_options_get() {

    p6_run_read_cmd aws iot get-logging-options "$@"
}