######################################################################
#<
#
# Function:
#	p6_aws_mediaconnect_flow_start(flow_arn)
#
#  Args:
#	flow_arn - 
#
#>
######################################################################
p6_aws_mediaconnect_flow_start() {
    local flow_arn="$1"
    shift 1

    p6_run_write_cmd aws mediaconnect start-flow --flow-arn $flow_arn "$@"
}