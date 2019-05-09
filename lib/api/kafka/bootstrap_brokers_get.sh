p6_aws_kafka_bootstrap_brokers_get() {
    local cluster_arn="$1"
    shift 1

    p6_log_and_run aws kafka get-bootstrap-brokers --cluster-arn $cluster_arn "$@"
}
