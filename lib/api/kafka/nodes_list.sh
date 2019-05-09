p6_aws_kafka_nodes_list() {
    local cluster_arn="$1"
    shift 1

    p6_run_read_cmd aws kafka list-nodes --cluster-arn $cluster_arn "$@"
}
