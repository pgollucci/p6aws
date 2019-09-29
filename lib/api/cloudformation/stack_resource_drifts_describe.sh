######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_stack_resource_drifts_describe(stack_name)
#
# Arg(s):
#    stack_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_stack_resource_drifts_describe() {
    local stack_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation describe-stack-resource-drifts --stack-name $stack_name "$@"
}