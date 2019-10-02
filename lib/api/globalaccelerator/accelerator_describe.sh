######################################################################
#<
#
# Function:
#	p6_aws_globalaccelerator_accelerator_describe(accelerator_arn)
#
#  Args:
#	accelerator_arn - 
#
#>
######################################################################
p6_aws_globalaccelerator_accelerator_describe() {
    local accelerator_arn="$1"
    shift 1

    p6_run_read_cmd aws globalaccelerator describe-accelerator --accelerator-arn $accelerator_arn "$@"
}