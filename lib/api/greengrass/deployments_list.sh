######################################################################
#<
#
# Function:
#	p6_aws_greengrass_deployments_list(group_id)
#
#  Args:
#	group_id - 
#
#>
######################################################################
p6_aws_greengrass_deployments_list() {
    local group_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-deployments --group-id $group_id "$@"
}