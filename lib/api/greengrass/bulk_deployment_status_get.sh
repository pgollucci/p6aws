######################################################################
#<
#
# Function:
#	p6_aws_greengrass_bulk_deployment_status_get(bulk_deployment_id)
#
#  Args:
#	bulk_deployment_id - 
#
#>
######################################################################
p6_aws_greengrass_bulk_deployment_status_get() {
    local bulk_deployment_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass get-bulk-deployment-status --bulk-deployment-id $bulk_deployment_id "$@"
}