p6_aws_opsworks_elastic_ip_update() {
    local elastic_ip="$1"
    shift 1

    p6_log_or_run aws opsworks update-elastic-ip --elastic-ip $elastic_ip "$@"
}
