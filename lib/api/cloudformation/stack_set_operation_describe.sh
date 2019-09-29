######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_set_operation_describe(stack_set_name, operation_id)
#
# Arg(s):
#    stack_set_name - 
#    operation_id - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_set_operation_describe() {
    local stack_set_name="$1"
    local operation_id="$2"
    shift 2

    p6_run_read_cmd aws cloudformation describe-stack-set-operation --stack-set-name $stack_set_name --operation-id $operation_id "$@"
}