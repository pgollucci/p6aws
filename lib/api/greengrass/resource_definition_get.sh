######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_resource_definition_get(resource_definition_id)
#
# Arg(s):
#    resource_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_resource_definition_get() {
    local resource_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-resource-definition --resource-definition-id $resource_definition_id "$@"
}