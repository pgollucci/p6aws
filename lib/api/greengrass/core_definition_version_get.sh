######################################################################
#<
#
# Function:
#	p6_aws_greengrass_core_definition_version_get(core_definition_id, core_definition_version_id)
#
#  Args:
#	core_definition_id - 
#	core_definition_version_id - 
#
#>
######################################################################
p6_aws_greengrass_core_definition_version_get() {
    local core_definition_id="$1"
    local core_definition_version_id="$2"
    shift 2

    p6_run_read_cmd aws greengrass get-core-definition-version --core-definition-id $core_definition_id --core-definition-version-id $core_definition_version_id "$@"
}