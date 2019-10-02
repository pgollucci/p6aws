######################################################################
#<
#
# Function:
#	p6_aws_globalaccelerator_accelerator_update(accelerator_arn)
#
#  Args:
#	accelerator_arn - 
#
#>
######################################################################
p6_aws_globalaccelerator_accelerator_update() {
    local accelerator_arn="$1"
    shift 1

    p6_run_write_cmd aws globalaccelerator update-accelerator --accelerator-arn $accelerator_arn "$@"
}