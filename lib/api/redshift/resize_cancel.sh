p6_aws_redshift_resize_cancel() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift cancel-resize --cluster-identifier $cluster_identifier "$@"
}
