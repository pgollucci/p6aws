######################################################################
#<
#
# Function:
#      = p6_aws_stepfunctions_executions_list(state_machine_arn)
#
# Arg(s):
#    state_machine_arn - 
#
#
#>
######################################################################
p6_aws_stepfunctions_executions_list() {
    local state_machine_arn="$1"
    shift 1

    p6_run_read_cmd aws stepfunctions list-executions --state-machine-arn $state_machine_arn "$@"
}