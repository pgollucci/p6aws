######################################################################
#<
#
# Function:
#	p6_aws_waf_logging_configurations_list()
#
#>
######################################################################
p6_aws_waf_logging_configurations_list() {

    p6_run_read_cmd aws waf list-logging-configurations "$@"
}