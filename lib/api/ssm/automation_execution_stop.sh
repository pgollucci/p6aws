######################################################################
#<
#
# Function:
#	p6_aws_ssm_automation_execution_stop(automation_execution_id)
#
#  Args:
#	automation_execution_id - 
#
#>
######################################################################
p6_aws_ssm_automation_execution_stop() {
    local automation_execution_id="$1"
    shift 1

    p6_run_write_cmd aws ssm stop-automation-execution --automation-execution-id $automation_execution_id "$@"
}