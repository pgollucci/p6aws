######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_delete(stack_name)
#
# Arg(s):
#    stack_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_delete() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation delete-stack --stack-name $stack_name "$@"
}