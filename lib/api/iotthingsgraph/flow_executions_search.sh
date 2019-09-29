######################################################################
#<
#
# Function:
#      = p6_aws_iotthingsgraph_flow_executions_search(system_instance_id)
#
# Arg(s):
#    system_instance_id - 
#
#
#>
######################################################################
p6_aws_iotthingsgraph_flow_executions_search() {
    local system_instance_id="$1"
    shift 1

    p6_run_write_cmd aws iotthingsgraph search-flow-executions --system-instance-id $system_instance_id "$@"
}