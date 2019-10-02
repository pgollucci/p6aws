######################################################################
#<
#
# Function:
#	p6_aws_waf_logging_configuration_put(logging_configuration)
#
#  Args:
#	logging_configuration - 
#
#>
######################################################################
p6_aws_waf_logging_configuration_put() {
    local logging_configuration="$1"
    shift 1

    p6_run_write_cmd aws waf put-logging-configuration --logging-configuration $logging_configuration "$@"
}