p6_aws_kafka_clusters_list() {

    p6_run_read_cmd aws kafka list-clusters "$@"
}
