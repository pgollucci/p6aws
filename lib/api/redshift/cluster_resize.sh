p6_aws_redshift_cluster_resize() {
    local cluster_identifier="$1"
    local number_of_nodes="$2"
    shift 2

    p6_run_write_cmd aws redshift resize-cluster --cluster-identifier $cluster_identifier --number-of-nodes $number_of_nodes "$@"
}
