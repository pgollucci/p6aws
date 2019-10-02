######################################################################
#<
#
# Function:
#	p6_aws_groundstation_dataflow_endpoint_group_create(endpoint_details)
#
#  Args:
#	endpoint_details - 
#
#>
######################################################################
p6_aws_groundstation_dataflow_endpoint_group_create() {
    local endpoint_details="$1"
    shift 1

    p6_run_write_cmd aws groundstation create-dataflow-endpoint-group --endpoint-details $endpoint_details "$@"
}