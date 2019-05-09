p6_aws_kafka_cluster_delete() {
    local cluster_arn="$1"
    shift 1

    p6_run_write_cmd aws kafka delete-cluster --cluster-arn $cluster_arn "$@"
}
