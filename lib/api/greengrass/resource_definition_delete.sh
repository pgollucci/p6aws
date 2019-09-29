######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_resource_definition_delete(resource_definition_id)
#
# Arg(s):
#    resource_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_resource_definition_delete() {
    local resource_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass delete-resource-definition --resource-definition-id $resource_definition_id "$@"
}