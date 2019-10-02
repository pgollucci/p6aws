######################################################################
#<
#
# Function:
#	p6_aws_groundstation_dataflow_endpoint_group_get(dataflow_endpoint_group_id)
#
#  Args:
#	dataflow_endpoint_group_id - 
#
#>
######################################################################
p6_aws_groundstation_dataflow_endpoint_group_get() {
    local dataflow_endpoint_group_id="$1"
    shift 1

    p6_run_read_cmd aws groundstation get-dataflow-endpoint-group --dataflow-endpoint-group-id $dataflow_endpoint_group_id "$@"
}