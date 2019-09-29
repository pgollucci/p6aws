######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_core_definitions_list()
#
#
#
#>
######################################################################
p6_aws_greengrass_core_definitions_list() {

    p6_run_read_cmd aws greengrass list-core-definitions "$@"
}