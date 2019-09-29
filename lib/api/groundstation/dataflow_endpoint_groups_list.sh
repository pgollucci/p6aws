######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_dataflow_endpoint_groups_list()
#
#
#
#>
######################################################################
p6_aws_groundstation_dataflow_endpoint_groups_list() {

    p6_run_read_cmd aws groundstation list-dataflow-endpoint-groups "$@"
}