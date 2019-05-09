p6_aws_redshift_resize_cancel() {
    local cluster_identifier="$1"
    shift 1

    p6_log_or_run aws redshift cancel-resize --cluster-identifier $cluster_identifier "$@"
}
