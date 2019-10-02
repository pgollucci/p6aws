######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_previous_template(stack_set_name, stack_name)
#
#  Args:
#	stack_set_name - 
#	stack_name - 
#
#>
######################################################################
p6_aws_cloudformation_previous_template() {
        local stack_set_name="$1"
        shift 1

    cond_log_and_run aws cloudformation update-stack-set --stack-set-name $stack_set_name --use-previous-template "$@"
}