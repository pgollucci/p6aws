######################################################################
#<
#
# Function:
#	p6_aws_iot_logging_options_set(logging_options_payload)
#
#  Args:
#	logging_options_payload - 
#
#>
######################################################################
p6_aws_iot_logging_options_set() {
    local logging_options_payload="$1"
    shift 1

    p6_run_write_cmd aws iot set-logging-options --logging-options-payload $logging_options_payload "$@"
}