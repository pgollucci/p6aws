p6_aws_opsworks_elastic_ip_associate() {
    local elastic_ip="$1"
    shift 1

    p6_log_or_run aws opsworks associate-elastic-ip --elastic-ip $elastic_ip "$@"
}
