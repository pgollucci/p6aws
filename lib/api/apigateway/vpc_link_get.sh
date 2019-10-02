######################################################################
#<
#
# Function:
#	p6_aws_apigateway_vpc_link_get(vpc_link_id)
#
#  Args:
#	vpc_link_id - 
#
#>
######################################################################
p6_aws_apigateway_vpc_link_get() {
    local vpc_link_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-vpc-link --vpc-link-id $vpc_link_id "$@"
}