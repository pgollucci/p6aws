p6_aws_redshift_logging_status_describe() {
    local cluster_identifier="$1"
    shift 1

    p6_run_read_cmd aws redshift describe-logging-status --cluster-identifier $cluster_identifier "$@"
}
