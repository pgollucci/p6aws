######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_stack_instances_create(stack_set_name, accounts, regions)
#
#  Args:
#	stack_set_name - 
#	accounts - 
#	regions - 
#
#>
######################################################################
p6_aws_cloudformation_stack_instances_create() {
    local stack_set_name="$1"
    local accounts="$2"
    local regions="$3"
    shift 3

    p6_run_write_cmd aws cloudformation create-stack-instances --stack-set-name $stack_set_name --accounts $accounts --regions $regions "$@"
}