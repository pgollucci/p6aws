######################################################################
#<
#
# Function:
#      = p6_aws_iotevents_logging_options_describe()
#
#
#
#>
######################################################################
p6_aws_iotevents_logging_options_describe() {

    p6_run_read_cmd aws iotevents describe-logging-options "$@"
}