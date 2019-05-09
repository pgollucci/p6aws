p6_aws_opsworks_elastic_ip_deregister() {
    local elastic_ip="$1"
    shift 1

    p6_run_write_cmd aws opsworks deregister-elastic-ip --elastic-ip $elastic_ip "$@"
}
