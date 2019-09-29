######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_flow_execution_messages_list(flow_execution_id)
#
# Arg(s):
#    flow_execution_id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_flow_execution_messages_list() {
    local flow_execution_id="$1"
    shift 1

    p6_run_read_cmd aws iotthingsgraph list-flow-execution-messages --flow-execution-id $flow_execution_id "$@"
}