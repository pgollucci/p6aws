######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_evaluation_update(evaluation_id, evaluation_name)
#
#  Args:
#	evaluation_id - 
#	evaluation_name - 
#
#>
######################################################################
p6_aws_machinelearning_evaluation_update() {
    local evaluation_id="$1"
    local evaluation_name="$2"
    shift 2

    p6_run_write_cmd aws machinelearning update-evaluation --evaluation-id $evaluation_id --evaluation-name $evaluation_name "$@"
}