######################################################################
#<
#
# Function:
#	p6_aws_mediaconnect_flow_output_remove(flow_arn, output_arn)
#
#  Args:
#	flow_arn - 
#	output_arn - 
#
#>
######################################################################
p6_aws_mediaconnect_flow_output_remove() {
    local flow_arn="$1"
    local output_arn="$2"
    shift 2

    p6_run_write_cmd aws mediaconnect remove-flow-output --flow-arn $flow_arn --output-arn $output_arn "$@"
}