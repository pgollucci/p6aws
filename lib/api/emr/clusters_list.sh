p6_aws_emr_clusters_list() {

    p6_run_read_cmd aws emr list-clusters "$@"
}
