p6_aws_kafka_cluster_operation_describe() {
    local cluster_operation_arn="$1"
    shift 1

    p6_run_read_cmd aws kafka describe-cluster-operation --cluster-operation-arn $cluster_operation_arn "$@"
}
