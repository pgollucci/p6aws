p6_aws_emr_cluster_attributes_modify() {
    local cluster_id="$1"
    shift 1

    p6_log_or_run aws emr modify-cluster-attributes --cluster-id $cluster_id "$@"
}
