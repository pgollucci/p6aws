######################################################################
#<
#
# Function:
#	p6_aws_cloudformation_termination_protection_update(enable_termination_protection, stack_name)
#
#  Args:
#	enable_termination_protection - 
#	stack_name - 
#
#>
######################################################################
p6_aws_cloudformation_termination_protection_update() {
    local enable_termination_protection="$1"
    local stack_name="$2"
    shift 2

    p6_run_write_cmd aws cloudformation update-termination-protection --enable-termination-protection $enable_termination_protection --stack-name $stack_name "$@"
}