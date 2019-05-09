p6_aws_groundstation_dataflow_endpoint_group_delete() {
    local dataflow_endpoint_group_id="$1"
    shift 1

    p6_run_write_cmd aws groundstation delete-dataflow-endpoint-group --dataflow-endpoint-group-id $dataflow_endpoint_group_id "$@"
}
