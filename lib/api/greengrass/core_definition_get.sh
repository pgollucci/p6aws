######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_core_definition_get(core_definition_id)
#
# Arg(s):
#    core_definition_id - 
#
#
#>
######################################################################
p6_aws_greengrass_core_definition_get() {
    local core_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-core-definition --core-definition-id $core_definition_id "$@"
}