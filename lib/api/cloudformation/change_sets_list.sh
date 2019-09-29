######################################################################
#<
#
# Function:
#      = p6_aws_cloudformation_change_sets_list(stack_name)
#
# Arg(s):
#    stack_name - 
#
#
#>
######################################################################
p6_aws_cloudformation_change_sets_list() {
    local stack_name="$1"
    shift 1

    p6_run_read_cmd aws cloudformation list-change-sets --stack-name $stack_name "$@"
}