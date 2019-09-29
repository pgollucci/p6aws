######################################################################
#<
#
# Function:
#      = p6_aws_configservice_resource_config_history_get(resource_type, resource_id)
#
# Arg(s):
#    resource_type - 
#    resource_id - 
#
#
#>
######################################################################
p6_aws_configservice_resource_config_history_get() {
    local resource_type="$1"
    local resource_id="$2"
    shift 2

    p6_run_read_cmd aws configservice get-resource-config-history --resource-type $resource_type --resource-id $resource_id "$@"
}