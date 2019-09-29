######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_update(stack_name)
#
# Arg(s):
#    stack_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_update() {
    local stack_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation update-stack --stack-name $stack_name "$@"
}