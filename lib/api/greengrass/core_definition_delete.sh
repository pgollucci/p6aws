######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_core_definition_delete(core_definition_id)
#
# Arg(s):
#    core_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_core_definition_delete() {
    local core_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass delete-core-definition --core-definition-id $core_definition_id "$@"
}