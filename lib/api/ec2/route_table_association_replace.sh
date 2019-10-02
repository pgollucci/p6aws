######################################################################
#<
#
# Function:
#	p6_aws_ec2_route_table_association_replace(association_id, route_table_id)
#
#  Args:
#	association_id - 
#	route_table_id - 
#
#>
######################################################################
p6_aws_ec2_route_table_association_replace() {
    local association_id="$1"
    local route_table_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 replace-route-table-association --association-id $association_id --route-table-id $route_table_id "$@"
}