p6_aws_kafka_bootstrap_brokers_get() {
    local cluster_arn="$1"
    shift 1

    p6_run_read_cmd aws kafka get-bootstrap-brokers --cluster-arn $cluster_arn "$@"
}
