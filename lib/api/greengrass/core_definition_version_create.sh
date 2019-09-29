######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_core_definition_version_create(core_definition_id)
#
# Arg(s):
#    core_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_core_definition_version_create() {
    local core_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-core-definition-version --core-definition-id $core_definition_id "$@"
}