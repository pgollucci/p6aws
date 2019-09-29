######################################################################
#<
#
# Function:
#      = p6_aws_ssm_automation_execution_get(automation_execution_id)
#
# Arg(s):
#    automation_execution_id - 
#
#
#>
######################################################################
p6_aws_ssm_automation_execution_get() {
    local automation_execution_id="$1"
    shift 1

    p6_run_read_cmd aws ssm get-automation-execution --automation-execution-id $automation_execution_id "$@"
}