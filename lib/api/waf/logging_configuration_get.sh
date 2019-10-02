######################################################################
#<
#
# Function:
#	p6_aws_waf_logging_configuration_get(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_waf_logging_configuration_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws waf get-logging-configuration --resource-arn $resource_arn "$@"
}