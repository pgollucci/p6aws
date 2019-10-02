######################################################################
#<
#
# Function:
#	p6_aws_apigateway_vpc_link_create(name, target_arns)
#
#  Args:
#	name - 
#	target_arns - 
#
#>
######################################################################
p6_aws_apigateway_vpc_link_create() {
    local name="$1"
    local target_arns="$2"
    shift 2

    p6_run_write_cmd aws apigateway create-vpc-link --name $name --target-arns $target_arns "$@"
}