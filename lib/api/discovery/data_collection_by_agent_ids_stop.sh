######################################################################
#<
#
# Function:
#	p6_aws_discovery_data_collection_by_agent_ids_stop(agent_ids)
#
#  Args:
#	agent_ids - 
#
#>
######################################################################
p6_aws_discovery_data_collection_by_agent_ids_stop() {
    local agent_ids="$1"
    shift 1

    p6_run_write_cmd aws discovery stop-data-collection-by-agent-ids --agent-ids $agent_ids "$@"
}