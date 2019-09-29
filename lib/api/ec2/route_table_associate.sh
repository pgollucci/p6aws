######################################################################
#<
#
# Function:
#      = p6_aws_ec2_route_table_associate(route_table_id, subnet_id)
#
# Arg(s):
#    route_table_id - 
#    subnet_id - 
#
#
#>
######################################################################
p6_aws_ec2_route_table_associate() {
    local route_table_id="$1"
    local subnet_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 associate-route-table --route-table-id $route_table_id --subnet-id $subnet_id "$@"
}