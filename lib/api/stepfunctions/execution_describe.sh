######################################################################
#<
#
# Function:
#      = p6_aws_stepfunctions_execution_describe(execution_arn)
#
# Arg(s):
#    execution_arn - 
#
#
#>
######################################################################
p6_aws_stepfunctions_execution_describe() {
    local execution_arn="$1"
    shift 1

    p6_run_read_cmd aws stepfunctions describe-execution --execution-arn $execution_arn "$@"
}