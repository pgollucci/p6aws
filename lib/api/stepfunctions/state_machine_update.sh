######################################################################
#<
#
# Function:
#	p6_aws_stepfunctions_state_machine_update(state_machine_arn)
#
#  Args:
#	state_machine_arn - 
#
#>
######################################################################
p6_aws_stepfunctions_state_machine_update() {
    local state_machine_arn="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions update-state-machine --state-machine-arn $state_machine_arn "$@"
}