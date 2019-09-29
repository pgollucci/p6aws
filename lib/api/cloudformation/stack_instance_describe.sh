######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_instance_describe(stack_set_name, stack_instance_account, stack_instance_region)
#
# Arg(s):
#    stack_set_name - 
#    stack_instance_account - 
#    stack_instance_region - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_instance_describe() {
    local stack_set_name="$1"
    local stack_instance_account="$2"
    local stack_instance_region="$3"
    shift 3

    p6_run_read_cmd aws cloudformation describe-stack-instance --stack-set-name $stack_set_name --stack-instance-account $stack_instance_account --stack-instance-region $stack_instance_region "$@"
}