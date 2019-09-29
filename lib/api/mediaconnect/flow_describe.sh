######################################################################
#<
#
# Function:
#      = p6_aws_mediaconnect_flow_describe(flow_arn)
#
# Arg(s):
#    flow_arn - 
#
#
#>
######################################################################
p6_aws_mediaconnect_flow_describe() {
    local flow_arn="$1"
    shift 1

    p6_run_read_cmd aws mediaconnect describe-flow --flow-arn $flow_arn "$@"
}