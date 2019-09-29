######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_group_create()
#
#
#
#>
######################################################################
p6_aws_greengrass_group_create() {

    p6_run_write_cmd aws greengrass create-group "$@"
}