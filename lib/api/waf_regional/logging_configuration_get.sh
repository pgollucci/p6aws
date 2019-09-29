######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_logging_configuration_get(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_waf_regional_logging_configuration_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws waf-regional get-logging-configuration --resource-arn $resource_arn "$@"
}