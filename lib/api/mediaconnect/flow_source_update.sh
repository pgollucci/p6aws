######################################################################
#<
#
# Function:
#	p6_aws_mediaconnect_flow_source_update(flow_arn, source_arn)
#
#  Args:
#	flow_arn - 
#	source_arn - 
#
#>
######################################################################
p6_aws_mediaconnect_flow_source_update() {
    local flow_arn="$1"
    local source_arn="$2"
    shift 2

    p6_run_write_cmd aws mediaconnect update-flow-source --flow-arn $flow_arn --source-arn $source_arn "$@"
}