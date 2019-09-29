######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_resource_describe(stack_name, logical_resource_id)
#
# Arg(s):
#    stack_name - 
#    logical_resource_id - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_resource_describe() {
    local stack_name="$1"
    local logical_resource_id="$2"
    shift 2

    p6_run_read_cmd aws cloudformation describe-stack-resource --stack-name $stack_name --logical-resource-id $logical_resource_id "$@"
}