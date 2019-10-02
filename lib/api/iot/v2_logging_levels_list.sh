######################################################################
#<
#
# Function:
#	p6_aws_iot_v2_logging_levels_list()
#
#>
######################################################################
p6_aws_iot_v2_logging_levels_list() {

    p6_run_read_cmd aws iot list-v2-logging-levels "$@"
}