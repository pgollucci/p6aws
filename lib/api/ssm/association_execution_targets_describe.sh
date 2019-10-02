######################################################################
#<
#
# Function:
#	p6_aws_ssm_association_execution_targets_describe(association_id, execution_id)
#
#  Args:
#	association_id - 
#	execution_id - 
#
#>
######################################################################
p6_aws_ssm_association_execution_targets_describe() {
    local association_id="$1"
    local execution_id="$2"
    shift 2

    p6_run_read_cmd aws ssm describe-association-execution-targets --association-id $association_id --execution-id $execution_id "$@"
}