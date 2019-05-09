p6_aws_opsworks_elastic_load_balancer_detach() {
    local elastic_load_balancer_name="$1"
    local layer_id="$2"
    shift 2

    p6_log_or_run aws opsworks detach-elastic-load-balancer --elastic-load-balancer-name $elastic_load_balancer_name --layer-id $layer_id "$@"
}
