######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_bulk_deployments_list()
#
#
#
#>
######################################################################
p6_aws_greengrass_bulk_deployments_list() {

    p6_run_read_cmd aws greengrass list-bulk-deployments "$@"
}