######################################################################
#<
#
# Function:
#      = p6_aws_waf_logging_configuration_delete(resource_arn)
#
# Arg(s):
#    resource_arn - 
#
#
#>
######################################################################
p6_aws_waf_logging_configuration_delete() {
    local resource_arn="$1"
    shift 1

    p6_run_write_cmd aws waf delete-logging-configuration --resource-arn $resource_arn "$@"
}