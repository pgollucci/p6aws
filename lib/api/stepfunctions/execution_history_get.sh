######################################################################
#<
#
# Function:
#	p6_aws_stepfunctions_execution_history_get(execution_arn)
#
#  Args:
#	execution_arn - 
#
#>
######################################################################
p6_aws_stepfunctions_execution_history_get() {
    local execution_arn="$1"
    shift 1

    p6_run_read_cmd aws stepfunctions get-execution-history --execution-arn $execution_arn "$@"
}