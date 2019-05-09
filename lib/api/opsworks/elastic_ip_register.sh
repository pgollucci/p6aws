p6_aws_opsworks_elastic_ip_register() {
    local elastic_ip="$1"
    local stack_id="$2"
    shift 2

    p6_run_write_cmd aws opsworks register-elastic-ip --elastic-ip $elastic_ip --stack-id $stack_id "$@"
}
