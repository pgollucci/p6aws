######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_logging_options_put(logging_options)
#
# Arg(s):
#    logging_options - 
#
#
#>
######################################################################
p6_aws_iotevents_logging_options_put() {
    local logging_options="$1"
    shift 1

    p6_run_write_cmd aws iotevents put-logging-options --logging-options $logging_options "$@"
}