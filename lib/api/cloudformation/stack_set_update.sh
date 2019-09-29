######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_set_update(stack_set_name)
#
# Arg(s):
#    stack_set_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_set_update() {
    local stack_set_name="$1"
    shift 1

    p6_run_write_cmd aws cloudformation update-stack-set --stack-set-name $stack_set_name "$@"
}