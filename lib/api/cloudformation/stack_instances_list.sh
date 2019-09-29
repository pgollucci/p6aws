######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_instances_list(stack_set_name)
#
# Arg(s):
#    stack_set_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_instances_list() {
    local stack_set_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation list-stack-instances --stack-set-name $stack_set_name "$@"
}