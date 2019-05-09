p6_aws_redshift_logging_disable() {
    local cluster_identifier="$1"
    shift 1

    p6_log_or_run aws redshift disable-logging --cluster-identifier $cluster_identifier "$@"
}
