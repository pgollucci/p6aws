p6_aws_kafka_cluster_describe() {
    local cluster_arn="$1"
    shift 1

    p6_log_and_run aws kafka describe-cluster --cluster-arn $cluster_arn "$@"
}
