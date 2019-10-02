######################################################################
#<
#
# Function:
#	p6_aws_apigateway_vpc_link_delete(vpc_link_id)
#
#  Args:
#	vpc_link_id - 
#
#>
######################################################################
p6_aws_apigateway_vpc_link_delete() {
    local vpc_link_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway delete-vpc-link --vpc-link-id $vpc_link_id "$@"
}