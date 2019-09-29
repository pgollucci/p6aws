######################################################################
#<
#
# Function:
#      = p6_aws_ec2_route_table_create(vpc_id)
#
# Arg(s):
#    vpc_id - 
#
#
#>
######################################################################
p6_aws_ec2_route_table_create() {
    local vpc_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-route-table --vpc-id $vpc_id "$@"
}