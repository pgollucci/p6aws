######################################################################
#<
#
# Function:
#      = p6_aws_ec2_route_replace(route_table_id)
#
# Arg(s):
#    route_table_id - 
#
#
#>
######################################################################
p6_aws_ec2_route_replace() {
    local route_table_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 replace-route --route-table-id $route_table_id "$@"
}