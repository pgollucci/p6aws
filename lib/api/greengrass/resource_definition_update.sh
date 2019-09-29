######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_resource_definition_update(resource_definition_id)
#
# Arg(s):
#    resource_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_resource_definition_update() {
    local resource_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-resource-definition --resource-definition-id $resource_definition_id "$@"
}