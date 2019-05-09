p6_aws_emr_instances_list() {
    local cluster_id="$1"
    shift 1

    p6_log_and_run aws emr list-instances --cluster-id $cluster_id "$@"
}
